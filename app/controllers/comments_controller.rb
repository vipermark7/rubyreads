
class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = @review.comments
  end

  def show
  end

  def new
    @comment = @review.comments.new
  end

  def edit
  end

  def create
    @comment = @review.comments.new(comment_params)

    if @comment.save
      redirect_to review_comments_path(@review), notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to review_comments_path(@review), notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to review_comments_path(@review), notice: 'Comment was successfully destroyed.'
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def set_comment
    @comment = @review.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :comment)
  end
end

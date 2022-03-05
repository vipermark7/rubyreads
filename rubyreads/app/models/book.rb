class Book < ApplicationRecord
    def search
        # TODO: may need to replace hardcoded API_KEY with variable from .env file
        # URL = "https://www.googleapis.com/books/v1/volumes?q=#{params[:search]}&maxResults=1&key=#{ENV["API_KEY"]}"
    end

end

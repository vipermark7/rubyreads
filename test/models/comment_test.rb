require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test 'needs a name for the commenter' do
    comments(:one).commenter.equal? 'andy1'
    comments(:one).commenter = ''
    assert books(:one).valid? == false
  end

  test 'commenter name cannot be tto long' do
    comments(:one).commenter = 'e' * 2001
    assert comments(:one).valid? == false
  end

  test 'commenter name cannot be tto short' do
    comments(:one).commenter = 'e' * 3
    assert comments(:one).valid? == false
  end

  test 'commenter name cannot be a number' do
    comments(:one).commenter = '2'
    assert books(:one).valid? == false
  end
end

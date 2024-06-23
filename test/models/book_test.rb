# frozen_string_literal: true

require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test 'needs a title' do
    books(:one).title.equal? 'Title'
    books(:one).title = ''
    assert books(:one).valid? == false
  end

  test 'title cannot be tto long' do
    books(:one).title = 'e' * 2001
    assert books(:one).valid? == false
  end

  test 'title cannot be tto short' do
    books(:one).title = 'e' * 3
    assert books(:one).valid? == false
  end

  test 'title cannot be a number' do
    books(:one).title = '2'
    assert books(:one).valid? == false
  end
end

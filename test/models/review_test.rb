require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test 'needs the username of a reviewer' do
    good = reviews(:good)
    good.username = ''
    assert good.valid? == false
  end

  test 'rating cannot be 0.5 or less' do
    # rating starts out as 0, making it invalid
    bad = reviews(:bad)
    assert bad.valid? == false
  end

  test 'rating cannot be more than 5' do
    bad = reviews(:bad)
    bad.rating = 6
    assert bad.valid? == false
  end
end

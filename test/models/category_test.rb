require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'All has id 0' do
    assert all.save
  end
  test 'bad_All is not allowed' do
    assert_raise bad_all.save
  end

end

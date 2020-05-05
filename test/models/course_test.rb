require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "the code method" do
    assert_equal 'IT-110', courses(:it_110).code
  end

  test "the descriptive_title method" do
    assert_equal 'IT Fundamentals', courses(:it_110).descriptive_title
  end

  test "the units method" do
    assert_equal 3, courses(:it_110).units
  end
end

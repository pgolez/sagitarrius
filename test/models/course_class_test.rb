require 'test_helper'

class CourseClassTest < ActiveSupport::TestCase
  test "the code method" do
    assert_equal '632258', course_classes(:course_632258).code
  end

  test "the max_enrollment method" do
    assert_equal 40, course_classes(:course_632258).max_enrollment
  end

  test "the status method" do
    assert_equal "OPEN", course_classes(:course_632258).status
    assert course_classes(:course_632258).OPEN?
  end

  test "the course method" do
    assert_equal courses(:it_110), course_classes(:course_632258).course
  end

  test "the room method" do
    assert_equal rooms(:computer_lab_1), course_classes(:course_632258).room
  end

  test "the semester method" do
    assert_equal semesters(:first_semester_2020_2021), course_classes(:course_632258).semester
  end

end
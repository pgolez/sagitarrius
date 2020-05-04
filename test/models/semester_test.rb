require 'test_helper'

class SemesterTest < ActiveSupport::TestCase
  test "the name method" do
    assert_equal 'First Semester S.Y. 2020-2021', semesters(:first_semester_2020_2021).name
  end
end

require 'test_helper'

class CourseClassesControllerTest < ActionDispatch::IntegrationTest
  test "should list all classes" do
    get '/course-classes', headers: {'accept': 'application/json'}

    assert_response :success
    assert_instance_of(Array, @response.parsed_body)
    assert_equal(2, @response.parsed_body.size)
    assert_course_class_list_json_structure(@response.parsed_body)
  end

  test "should show specific class" do
    id = course_classes(:course_632258).id
    get "/course-classes/#{id}", headers: {'accept': 'application/json'}, params: {id: 1}

    assert_response :success
    assert_course_class_json_structure(@response.parsed_body)
  end

  private

  def assert_course_class_list_json_structure (course_classes)
    course_classes.each do |course_class|
      assert_course_class_json_structure(course_class)
    end
  end

  def assert_course_class_json_structure (course_class)
    ['id', 'code', 'course', 'room', 'semester',
    'max_enrollment', 'status'].each do |key|
      assert_key_exists(course_class, key)
    end
  end

  def assert_key_exists(course_class, key)
    assert course_class.has_key?(key), "Missing #{key} in course class JSON response"
  end

end

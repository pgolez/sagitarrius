require 'test_helper'

class CourseClassesControllerTest < ActionDispatch::IntegrationTest
  test "should list all classes" do
    get '/course-classes'

    assert_response :success
    assert_instance_of(Array, @response.parsed_body)
    assert_equal(2, @response.parsed_body.size)
    assert_course_class_list_json_structure(@response.parsed_body)
  end

  test "should show specific class" do
    id = course_classes(:course_632258).id
    get "/course-classes/#{id}"

    assert_response :success
    assert_course_class_json_structure(@response.parsed_body)
  end

  test "should create new course class" do
    post "/course-classes",
      params: {
        course_class: {
          "code": "518332",
          "max_enrollment": 25,
          "course_id": courses(:it_110).id,
          "room_id": rooms(:computer_lab_1).id,
          "semester_id": semesters(:first_semester_2020_2021).id
        }
      }

    assert_response :created
  end

  test "should update existing course class" do
    id = course_classes(:course_632258).id
    put "/course-classes/#{id}",
      params: {
        course_class: {
          "max_enrollment": 40,
          "course_id": courses(:it_111).id,
          "room_id": rooms(:forensics_lab).id,
          "semester_id": semesters(:first_semester_2020_2021).id,
          "status": "DRAFT"
        }
      }

    assert_response :success
    assert_course_class_json_structure(@response.parsed_body)
  end

  private

  def get(path, **args)
    args[:headers] = {} unless args.has_key? :headers
    args[:headers][:accept] = 'application/json' if args[:headers][:accept].nil?

    super(path, args)
  end

  def post(path, **args)
    args[:headers] = {} unless args.has_key? :headers
    args[:headers][:accept] = 'application/json' if args[:headers][:accept].nil?

    super(path, args)
  end

  def put(path, **args)
    args[:headers] = {} unless args.has_key? :headers
    args[:headers][:accept] = 'application/json' if args[:headers][:accept].nil?

    super(path, args)
  end

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

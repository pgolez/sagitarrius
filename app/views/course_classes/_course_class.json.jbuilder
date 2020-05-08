json.extract! course_class, :id, :code

json.course do
  json.id     course_class.course.id
  json.code   course_class.course.code
  json.title  course_class.course.descriptive_title
  json.units  course_class.course.units
end

json.room do
  json.id   course_class.room.id
  json.name course_class.room.name
end

json.semester do
  json.id   course_class.semester.id
  json.name course_class.semester.name
end

json.schedule do
  if course_class.schedule.nil?
    json.null!
  else
    json.id course_class.schedule.id
    json.days course_class.schedule.days
    json.time_start course_class.schedule.time_start
    json.time_end course_class.schedule.time_end
  end
end

json.extract! course_class, :max_enrollment, :status, :created_at, :updated_at
json.url course_class_url course_class

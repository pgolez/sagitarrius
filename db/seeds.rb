# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
courses = Course.create [
  {code: 'IT-110', descriptive_title: 'IT Fundamentals', units: 3},
  {code: 'IT-111', descriptive_title: 'Program Logic Design', units: 4}
]

rooms = Room.create [
  {name: 'Computer Laboratory 702'},
  {name: 'Computer Laboratory 703'},
]

semester = Semester.create name: 'First Semester 2020-2021'

schedules = Schedule.create [
  {monday: true, wednesday: true, friday: true, time_start: 10*60 + 30, time_end: 11*60 + 30},
  {monday: true, wednesday: true, friday: true, time_start: 14*60 + 30, time_end: 15*60 + 30},
  {tuesday: true, thursday: true, time_start: 13*60 + 30, time_end: 15*60},
  {saturday: true, time_start: 16*60 + 30 ,time_end: 19*60}
]

course_classes = CourseClass.create [
  {code: '69923', max_enrollment: 25, course_id: courses[0].id, schedule_id: schedules[1].id,
  room_id: rooms[0].id, semester_id: semester.id, status: :OPEN},
  {code: '68078', max_enrollment: 25, course_id: courses[0].id, schedule_id: schedules[3].id,
  room_id: rooms[1].id, semester_id: semester.id, status: :OPEN},
]

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@instructors = CSV.read("instructor-file.csv")
@instructors.shift()

@students = CSV.read("student-file.csv")
@students.shift()

@cohorts = CSV.read("cohort-file.csv")
@cohorts.shift()

@courses = CSV.read("course-file.csv")
@courses.shift()

for element in @courses
  Course.create(name: "#{element[1]}", hours: "#{element[2]}")
end

for element in @students
  Student.create(first_name: "#{element[1]}", last_name: "#{element[2]}", age: "#{element[3]}", high_deg: "#{element[4]}")
end

for element in @instructors
  Instructor.create(first_name: "#{element[1]}", last_name: "#{element[2]}", age: "#{element[3]}", high_deg: "#{element[4]}", salary: "#{element[5]}")
end

for element in @cohorts
  create = Cohort.create(name: "#{element[1]}", start: "#{element[3]}", end: "#{element[4]}", course_id: "#{element[5]}")
end

User.create(email: "sys_admin@gtgo.com", password: "sysadmin")

n = 0
10.times do |i|
  CohortStudent.create(student_id: n, cohort_id: 1)
  n+=1
end
a = 0
10.times do |i|
  CohortStudent.create(student_id: a, cohort_id: 2)
  a+=1
end

CohortInstructor.create(cohort_id: 1, instructor_id: 1)
CohortInstructor.create(cohort_id: 2, instructor_id: 1)
CohortInstructor.create(cohort_id: 3, instructor_id: 1)
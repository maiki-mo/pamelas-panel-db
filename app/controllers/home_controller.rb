class HomeController < ApplicationController
  def index
    @cohorts = Cohort.all
    @students = Student.all
    @instructors = Instructor.all
    @courses = Course.all
  end
end
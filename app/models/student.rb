class Student < ApplicationRecord
  has_many :cohort_student
  has_many :cohorts, through: :cohort_student
end

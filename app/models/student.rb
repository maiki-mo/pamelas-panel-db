class Student < ApplicationRecord
  has_many :cohort_student
  has_many :cohorts, through: :cohort_student
  def full_name
    "#{first_name} #{last_name}"
  end
end

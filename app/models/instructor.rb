class Instructor < ApplicationRecord
  has_many :cohort_instructors
  has_many :cohorts, through: :cohort_instructors
  def full_name
    "#{first_name} #{last_name}"
  end
end

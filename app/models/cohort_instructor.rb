class CohortInstructor < ApplicationRecord
  belongs_to :instructor
  belongs_to :cohort
  validates :instructor_id, presence: true
  validates :cohort_id, presence: true, uniqueness: true
end

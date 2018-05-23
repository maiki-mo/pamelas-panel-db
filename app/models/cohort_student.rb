class CohortStudent < ApplicationRecord
  belongs_to :student
  belongs_to :cohort
  validates :cohort_id, uniqueness: { scope: :student_id }
end
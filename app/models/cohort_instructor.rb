class CohortInstructor < ApplicationRecord
  belongs_to :instructor
  belongs_to :cohort
end

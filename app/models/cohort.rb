class Cohort < ApplicationRecord
  belongs_to :course
  has_one :cohort_instructor
  has_one :instructor, through: :cohort_instructor
  has_many :cohort_student, dependent: :destroy
  has_many :students, through: :cohort_student
  validates :name, uniqueness: true
  validates :course_id, numericality: { integer_only: true, greater_than: 0 }
end

class Student < ApplicationRecord
  has_many :cohort_student
  has_many :cohorts, through: :cohort_student
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :high_deg, presence: true, length: { in: 2..3 }
  validates :age, presence: true, numericality: {integer_only: true, less_than: 100 }
  def full_name
    "#{first_name} #{last_name}"
  end
end

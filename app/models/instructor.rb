class Instructor < ApplicationRecord
  has_many :cohort_instructors
  has_many :cohorts, through: :cohort_instructors
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letter" }
  validates :salary, presence: true, numericality: { integer_only: true, greater_than: 100000 }
  validates :high_deg, presence: true, length: { in: 2..3 }
  validates :age, presence: true, numericality: {integer_only: true, less_than: 100 }
  def full_name
    "#{first_name} #{last_name}"
  end
end

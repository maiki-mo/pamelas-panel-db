class Course < ApplicationRecord
  has_many :cohorts
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :hours, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 200 }
end
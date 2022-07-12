class Actor < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :known_for, presence: true
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :age, comparison: { greater_than: 13 }
  belongs_to :movie
end

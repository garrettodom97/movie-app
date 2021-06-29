class Movie < ApplicationRecord
  has_many :actors

  validates :title, length: { minimum: 2 }
  validates :year, numericality: { greater_than: 1900 }
  validates :year, numericality: { less_than: 2022 }
  validates :plot, presence: true
  validates :director, length: { minimum: 2 }
  validates :english, presence: true
end

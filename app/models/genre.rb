class Genre < ApplicationRecord
  has_many :MovieGenres
  has_many :movies, through: :MovieGenres
end

class Game < ApplicationRecord
  has_many :guesses
  has_many :words
end

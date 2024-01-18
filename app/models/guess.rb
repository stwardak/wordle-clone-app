class Guess < ApplicationRecord
  has_many :words
  belongs_to :game
end

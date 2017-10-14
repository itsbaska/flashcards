class Round < ApplicationRecord
  has_many :guesses
  belongs_to :deck
  belongs_to :user
end

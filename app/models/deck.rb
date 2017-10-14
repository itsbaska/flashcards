class Deck < ApplicationRecord
  has_many :rounds
  has_many :cards

  def pick_a_card
    self.cards.sample.id
  end



end


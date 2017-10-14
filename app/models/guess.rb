class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :round

  def check_answer(user_answer)
    self.card.answer == user_answer
  end

end

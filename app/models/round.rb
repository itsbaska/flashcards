class Round < ApplicationRecord
  has_many :guesses
  belongs_to :deck
  belongs_to :user

  def create_guesses
    self.deck.cards.each do |card|
      new_guess = Guess.new(card_id: card.id, round_id: self.id)
      new_guess.save
    end
  end

  def next_card
    @guesses = []
    self.guesses.each do |guess|
      @guesses << guess if guess.correctness == false
    end
    @guesses.sample.card
  end

  def count_first_guess
    guesses = self.guesses.select {|guess| guess.count == 1}
    guesses.length
  end

  def count_total_guesses
    self.guesses.reduce(0) {|sum, guess| sum + guess.count }
  end

  def format_date
    Time.zone = 'Central Time (US & Canada)'
    self.created_at.in_time_zone
  end

end

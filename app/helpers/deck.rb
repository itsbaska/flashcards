
def cards_in_deck(deck)
  cards = Card.all
  cards.select { |card| card.deck_id == deck.id}
end

# write shuffle method

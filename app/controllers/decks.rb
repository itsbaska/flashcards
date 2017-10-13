get '/rounds/:round_id/decks/:id' do
  @deck = Deck.find_by(params[:id])
  @cards = cards_in_deck(@deck)
  erb :"/cards/show"
end

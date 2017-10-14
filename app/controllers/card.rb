get '/rounds/:round_id/cards/:id' do
  @round = Round.find(params[:round_id])
  @cards = @round.deck.cards.find(params[:id])
  erb :"/cards/show"
end

# post route
  # increment this cards guesses
  # check this cards answer
  # if all guesses are true end round
  # else redirect to next card

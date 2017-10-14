get '/rounds/:round_id/cards/:id' do
  @round = Round.find(params[:round_id])
  @card = @round.deck.cards.find(params[:id])
  erb :"/cards/show"
end

post '/rounds/:round_id/cards/:id' do
  @user_guess = params[:user_guess]
  @round = Round.find(params[:round_id])
  @guess = Guess.find_by(round_id: params[:round_id], card_id: params[:id])
  @guess.increment!(:count)

  if @guess.check_answer(@user_guess)
    @guess.correctness = true
    @guess.save
  end

  @all_false_guesses = Guess.where(round_id: @round.id,correctness: false)

  if @all_false_guesses.count == 0
    redirect "/rounds/#{@round.id}"
  else
    next_card = @round.next_card
    redirect "/rounds/#{@round.id}/cards/#{next_card.id}"
  end

end

# post route
  # increment this cards guesses
  # check this cards answer
  # if all guesses are true end round
  # else redirect to next card

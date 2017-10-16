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

  @correct = @guess.check_answer(@user_guess)

  if @correct
    @guess.correctness = true
    @guess.save
  end

  @all_false_guesses = Guess.where(round_id: @round.id,correctness: false)

  if @all_false_guesses.count == 0
    redirect "/rounds/#{@round.id}"
  else
    erb :"/cards/response"
  end
end

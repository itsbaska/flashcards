#  fixme
get '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = @round.deck

  erb :'/rounds/show'
end

get '/decks/:id/rounds/new' do
  @round = Round.new(user_id: current_user.id, deck_id: params[:id])
  @round.save
  @round.create_guesses

  redirect "/rounds/#{@round.id}/cards/#{@round.deck.pick_a_card}"

end

# post '/decks/:id/rounds/new' do
# end
# make a post route for instantiating a new round
  # pick/redirect to a new round/game the next card also


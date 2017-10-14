#  fixme
get 'rounds/:round_id' do

  @deck = Deck.find(params[:id])
  @round = Round.find(params[:id])
  erb :'/rounds/show'
end

# make a post route for instantiating a new round
  # pick/redirect to a new round/game the next card also


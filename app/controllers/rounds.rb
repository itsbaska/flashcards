get 'rounds/:round_id' do

  @deck = Deck.find(params[:id])
  @round = Round.find(params[:id])
  erb :'/rounds/show'
end

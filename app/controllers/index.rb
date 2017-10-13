get '/' do
  @all_decks = Deck.all
  erb :'/index'
end

User.destroy_all
Card.destroy_all
Deck.destroy_all
Round.destroy_all
Guess.destroy_all

bar_trivia = Deck.create(title: "Bar Trivia")
halloween_trivia = Deck.create(title: "Halloween Trivia")

card1 = Card.create( question: "The beaver is the national emblem of which country?", answer: "Canada", deck_id: 1 )
card2 = Card.create( question: "Which singer's real name is Stefani Joanne Angelina Germanotta?", answer: "Lady Gaga", deck_id: 1 )
card3 = Card.create( question: "How many players are there in a baseball team?", answer: "9", deck_id: 1 )
card4 = Card.create( question: "What is the name of Batman's butler?", answer: "Alfred", deck_id: 1 )
card5 = Card.create( question: "Hg is the chemical symbol of which element?", answer: "Mercury", deck_id: 1 )
card6 = Card.create( question: "What is Chandler's last name in the sitcom Friends?", answer: "Bing", deck_id: 1 )

card1 = Card.create( question: "Halloween is the day before which holiday?", answer: "All Saints Day", deck_id: 2 )
card1 = Card.create( question: "Which region in the world do pumpkins originate from?", answer: "Central America", deck_id: 2 )
card1 = Card.create( question: "Transylvania is a region in which country?", answer: "Romania", deck_id: 2 )
card1 = Card.create( question: "Who directed The Nightmare Before Christmas?", answer: "Henry Selick", deck_id: 2 )
card1 = Card.create( question: "In the The Texas Chainsaw Massacre, how many people are killed with a chainsaw?", answer: "1", deck_id: 2 )
card1 = Card.create( question: "How many Oscars was Psycho nominated for?", answer: "4", deck_id: 2 )


User.create(username: "pelican", email: "b@gmail.com", encrypted_password: "a")

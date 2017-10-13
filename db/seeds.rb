User.destroy_all
Card.destroy_all
Deck.destroy_all
Round.destroy_all
Guess.destroy_all

User.create(username: "a", email: "a", encrypted_password: "a")
Card.create(question: "Where do nighthawks migrate to?", answer: "South America", deck_id: 1)
Deck.create(title: "Nighthawks")
Round.create(user_id: 1, deck_id: 1)
Guess.create(card_id: 1, round_id: 1)

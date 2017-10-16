User.destroy_all
Card.destroy_all
Deck.destroy_all
Round.destroy_all
Guess.destroy_all

bar_trivia = [
  { question: "The beaver is the national emblem of which country?",
    answer: "Canada",
    deck_id: 1 },
  { question: "Which singer's real name is Stefani Joanne Angelina Germanotta?",
    answer: "Lady Gaga",
    deck_id: 1 }
]

bar_trivia_2 = [
  { question: "How many players are there in a baseball team?",
    answer: "9",
    deck_id: 2 },
  { question: "What is the name of Batman's butler?",
    answer: "Alfred",
    deck_id: 2 }
]

halloween_trivia = [
  { question: "Halloween is the day before which holiday?",
    answer: "All Saints Day",
    deck_id: 3 },
  { question: "Which region in the world do pumpkins originate from?",
    answer: "Central America",
    deck_id: 3 }
  ]
halloween_trivia_2 = [
  { question: "Transylvania is a region in which country?",
    answer: "Romania",
    deck_id: 4 },
   { question: "In the The Texas Chainsaw Massacre, how many people are killed with a chainsaw?",
    answer: "1",
    deck_id: 4 },
]


User.create(username: "a", email: "a@gmail.com", encrypted_password: "a")
Deck.create(title: "Bar Trivia")
Deck.create(title: "Bar Trivia 2")
Deck.create(title: "Halloween Trivia")
Deck.create(title: "Halloween Trivia 2")

Card.create(bar_trivia)
Card.create(bar_trivia_2)
Card.create(halloween_trivia)
Card.create(halloween_trivia_2)

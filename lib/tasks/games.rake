namespace :games do
  desc 'Create a standard Casino Game'
  task standard: :environment do
    clients = Client.all
    card_decks = CardDeck.all

    clients.each do |client|
      game = client.games.create!(
        name: Faker::Lorem.sentence(word_count: 3),
        card_deck: card_decks.sample
      )

      5.times do
        game.scores.create!(
          points: Faker::Number.number(digits: 5)
        )
      end
    end
  end

  task all: ['games:standard']
end

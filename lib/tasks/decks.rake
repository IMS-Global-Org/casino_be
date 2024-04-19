# frozen_string_literal: true

namespace :decks do
  namespace :bicycle do
    desc 'Load a Standard Deck of 52 Bicycle Playing Cards'
    task standard: :environment do
      json_cards = FileList[
        './lib/tasks/bicycle:standard:52.json',
      ]

      card_deck = CardDeck.new
      card_deck.brand = 'bicycle'
      card_deck.classification = 'standard'
      card_deck.number = 52
      card_deck.jokers = false

      if card_deck.save
        json_cards.each do |card_set|
          json = File.read(card_set)
          open_structs = JSON.parse(json, { object_class: OpenStruct, symbolize_names: true })

          open_structs.each do |os|
            card = Card.new
            card.rank = os.rank
            card.suit = os.suit
            card.name = os.name
            card.points = os.points

            card_deck.cards << card
          end

          card_deck.save
        end
      end
    end
  end

  task all: ['bicycle:standard']
end

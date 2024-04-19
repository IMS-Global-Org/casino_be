# frozen_string_literal: true

# A Single Playing Card from a Deck
class Card < ApplicationRecord
  belongs_to :card_deck
end

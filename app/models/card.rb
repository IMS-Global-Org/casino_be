# frozen_string_literal: true

# A Single Playing Card from a Deck
class Card < ApplicationRecord
  belongs_to :card_deck

  validates :rank, presence: true
  validates :suit, presence: true
  validates :name, presence: true
  validates :points, presence: true,
                     numericality: {
                       only_integer: true,
                       message: '%<value>s must be numerical'
                     }
end

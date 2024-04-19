# frozen_string_literal: true

# Represents a Deck of Cards
class CardDeck < ApplicationRecord
  include Talliable

  has_many :cards

  def as_json(_options = {})
    super(include: [:cards])
  end
end

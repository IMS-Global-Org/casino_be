# frozen_string_literal: true

# Tally all of the existing card points
module Talliable
  def tally
    most_cards + spades + big_casino + little_casino + aces
  end

  def little_casino
    any? { |card| card.suite == 'Spade' && card.face_value.to_i == 2 } ? 1 : 0
  end

  def big_casino
    any? { |card| card.suite == 'Diamond' && card.face_value.to_i == 10 } ? 2 : 0
  end

  def spades
    select { |card| card.suite == 'Spade' }.length >= 7 ? 1 : 0
  end

  def most_cards
    length >= 27 ? 3 : 0
  end

  def aces
    inject(0) { |sum, card| sum + (card.face_value == 'A' ? 1 : 0) }
  end
end

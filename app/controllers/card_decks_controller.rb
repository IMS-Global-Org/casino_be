# frozen_string_literal: true

# CardDeck details and Cards
class CardDecksController < ApplicationController
  before_action :set_card_deck, only: [:show]
  rescue_from ActiveRecord::RecordNotFound, with: :card_deck_not_found

  def show
    render json: @card_deck
  end

  private

  def set_card_deck
    @card_deck = CardDeck.includes(:cards).find(params[:id])
  end

  def card_deck_not_found
    # Bicycle Standard 52
    render json: CardDeck.includes(:cards).find(1)
  end
end

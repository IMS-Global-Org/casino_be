class Game < ApplicationRecord
  belongs_to :client
  belongs_to :card_deck

  has_many :scores

  validates :name, presence: true
end

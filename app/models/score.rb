class Score < ApplicationRecord
  belongs_to :game

  validates :points, presence: true
end

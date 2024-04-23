class Client < ApplicationRecord
  has_one :authentication
  has_one :address

  has_many :games

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true, if: :valid_date?

  def valid_date?
    # NOTE: iso8601 only

    Date.parse(@date_of_birth, '%Y-%m-%d') < Date.current
  rescue StandardError
    false
  end
end

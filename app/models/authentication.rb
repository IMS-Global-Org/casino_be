class Authentication < ApplicationRecord
  belongs_to :client

  before_validation :generate_uuid, on: %i[create save]
  before_validation :encode_password, on: %i[create save]

  validates :uuid, presence: true
  validates :username, presence: true
  validates :password, presence: true

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end

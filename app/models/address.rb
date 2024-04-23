class Address < ApplicationRecord
  belongs_to :client
  belongs_to :city
  belongs_to :state
  belongs_to :country

  validates :street1, presence: true
  validates :area_code, presence: true, numericality: { only_integer: true }
  validates :area_code_suffix, presence: true, numericality: { only_integer: true }
end

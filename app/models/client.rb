class Client < ApplicationRecord
  # has_one :user
  validates :name, :phone, :address, presence: true
  has_many :orders
end

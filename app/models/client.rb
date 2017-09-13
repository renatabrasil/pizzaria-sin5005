class Client < ApplicationRecord
  # has_one :user
  validates :name, :phone, :address, presence: true

end

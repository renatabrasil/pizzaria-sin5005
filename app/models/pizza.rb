class Pizza < ApplicationRecord
  validates :name, :price, presence: true
end

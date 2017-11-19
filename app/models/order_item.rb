class OrderItem < ApplicationRecord
  belongs_to :pizza
  belongs_to :order
  # quantity

  accepts_nested_attributes_for :pizza, allow_destroy: true
end

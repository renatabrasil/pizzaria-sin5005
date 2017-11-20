class Delivery < ApplicationRecord

  belongs_to :order
  has_one :employee

end

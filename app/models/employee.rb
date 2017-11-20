class Employee < ApplicationRecord
  validates :name, :office, :salary, :workload, :telephone, presence: true
  has_many :orders
  has_one :user

  accepts_nested_attributes_for :user, reject_if: :all_blank, allow_destroy: true
end

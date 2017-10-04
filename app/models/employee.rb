class Employee < ApplicationRecord
  validates :name, :office, :salary, :workload, :telephone, presence: true
end

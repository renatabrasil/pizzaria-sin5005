class AddReferenceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :employee, index: true
  end
end

class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.references :employee, foreign_key: true
      t.references :order, foreign_key: true
      t.string :note
      t.timestamps
    end
  end
end

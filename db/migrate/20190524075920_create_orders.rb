# db/migrate/20190524075920_create_orders.rb

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :collection
      t.string :number
      t.text :note

      t.timestamps
    end
  end
end

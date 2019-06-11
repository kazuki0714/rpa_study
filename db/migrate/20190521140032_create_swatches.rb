# db/migrate/20190521140032_create_swatches.rb

class CreateSwatches < ActiveRecord::Migration[5.2]
  def change
    create_table :swatches do |t|
      t.string :collection
      t.string :number
      t.text :note

      t.timestamps
    end
  end
end

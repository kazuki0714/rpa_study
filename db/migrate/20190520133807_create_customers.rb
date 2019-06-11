class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :company
      t.string :category
      t.string :name
      t.string :staff
      t.text :note
      t.string :name_card
      t.string :telephone
      t.string :fax
      t.string :cell_phone
      t.string :mail_address

      t.timestamps

    end
  end
end

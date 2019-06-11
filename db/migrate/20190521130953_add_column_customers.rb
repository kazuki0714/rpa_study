class AddColumnCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :department, :string

  end
end

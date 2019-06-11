class AddColumnToFabrics < ActiveRecord::Migration[5.2]
  def change
    add_column :fabrics, :number, :string
  end
end

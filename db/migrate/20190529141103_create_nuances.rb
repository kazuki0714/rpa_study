class CreateNuances < ActiveRecord::Migration[5.2]
  def change
    create_table :nuances do |t|

      t.timestamps
    end
  end
end

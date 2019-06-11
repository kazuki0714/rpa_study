class CreateFabrics < ActiveRecord::Migration[5.2]
  def change
    create_table :fabrics do |t|
      t.string :number
      t.string :company
      t.string :category
      t.string :brand
      t.string :chakubun
      t.string :width
      t.string :bante
      t.string :konritsu
      t.string :uchikomi
      t.string :organization
      t.string :standard
      t.string :processing
      t.string :supplement
      t.string :bussei
      t.string :sample
      t.string :running
      t.string :kibata
      t.string :fee
      t.string :weaver
      t.string :factory
      t.string :metsuke
      t.string :min_order
      t.string :min_processing
      t.string :wash
      t.string :image_fabric
      t.string :image_color
      t.string :image_product
      t.numeric :hardness
      t.numeric :thickness
      t.numeric :brightness
      t.numeric :design
      t.numeric :stretch
      t.numeric :function
      t.numeric :stability
      t.numeric :repellency
      t.numeric :antifouling
      t.numeric :abrasion
      t.numeric :kickback

      t.timestamps
    end
  end
end

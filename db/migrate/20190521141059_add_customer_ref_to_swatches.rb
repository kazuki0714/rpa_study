# db/migrate/20190521141059_add_customer_ref_to_swatches.rb

class AddCustomerRefToSwatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :swatches, :customer, index: true

  end
end

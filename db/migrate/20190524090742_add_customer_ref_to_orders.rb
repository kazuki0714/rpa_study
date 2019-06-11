class AddCustomerRefToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :customer, index: true
  end
end

# app/models/customer.rb

class Customer < ApplicationRecord
  has_many :swatches
  has_many :orders
end

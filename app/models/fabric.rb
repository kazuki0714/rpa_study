class Fabric < ApplicationRecord
  scope :hardness, -> (hardness) { where (["hardness LIKE ?" , "%#{hardness}%"]) }
  scope :thickness, -> (thickness) { where (["thickness LIKE ?" , "%#{thickness}%"]) }
  scope :brightness, -> (brightness) { where (["brightness LIKE ?" , "%#{brightness}%"]) }

  belongs_to :nuance, optional: true
end

class Hotel < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  has_one :restaurante, inverse_of: :hotel
end

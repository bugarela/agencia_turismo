class Restaurante < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  belongs_to :hotel
end

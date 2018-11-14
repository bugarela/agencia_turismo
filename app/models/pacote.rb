class Pacote < ApplicationRecord
  belongs_to :cidade
  has_many :compras
  has_many :clientes, through: :compras
end

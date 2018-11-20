class Pacote < ApplicationRecord
  belongs_to :cidade
  has_many :compras, inverse_of: :pacote
  has_many :clientes, through: :compras
  has_many :igrejas, through: :atracoes, source: :turistico, source_type: :'Igreja'
end

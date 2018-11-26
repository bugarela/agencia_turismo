class TipoDeQuarto < ApplicationRecord
  belongs_to :hotel
  has_many :quartos, inverse_of: :tipo_de_quarto
end

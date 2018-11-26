class Hotel < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  has_one :restaurante, inverse_of: :hotel
  has_many :tipo_de_quartos, inverse_of: :hotel

  validates :endereco, :cidade, presence: true

end

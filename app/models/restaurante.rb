class Restaurante < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  belongs_to :hotel, :optional => true

  validates :endereco, :cidade, presence: true
end

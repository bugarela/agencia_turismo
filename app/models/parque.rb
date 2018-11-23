class Parque < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  has_many :atracoes, as: :turistico
  has_many :pacotes, through: :atracoes

  validates :cidade, :endereco, presence: true

  validates_associated :atracoes
  validates_associated :pacotes
end

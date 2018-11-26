class CasaDeShow < ApplicationRecord
  belongs_to :cidade
  belongs_to :endereco
  has_many :atracoes, as: :turistico
  has_many :pacotes, through: :atracoes

  has_one :restaurante_interno

  validates :endereco, :cidade, :hora_inicio, :dia_fechamento, presence: true
  validates :hora_inicio, :inclusion => 0..23
  validates :dia_fechamento, :inclusion => 0..6

  validates_associated :atracoes
  validates_associated :pacotes

  def fechamento
    ['Domingos', 'Segundas', 'Terças', 'Quartas', 'Quintas', 'Sextas', 'Sábados'][dia_fechamento]
  end
end

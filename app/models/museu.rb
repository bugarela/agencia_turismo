class Museu < ApplicationRecord
  belongs_to :cidade
  belongs_to :endereco

  has_many :fundacoes
  has_many :fundadores, through: :fundacoes
  has_many :atracoes, as: :turistico
  has_many :pacotes, through: :atracoes

  validates :endereco, :cidade, :n_salas, :data_fundacao, presence: true
  validates_associated :atracoes
  validates_associated :pacotes
  validates_associated :fundacoes
end

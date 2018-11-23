class Igreja < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  has_many :atracoes, as: :turistico
  has_many :pacotes, through: :atracoes

  validates :endereco, :cidade, :estilo_construcao, :data_construcao, presence: true
  validates_associated :atracoes
  validates_associated :pacotes

end

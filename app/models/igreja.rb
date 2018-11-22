class Igreja < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
  has_many :atracoes, as: :turistico
  has_many :pacotes, through: :atracoes
end

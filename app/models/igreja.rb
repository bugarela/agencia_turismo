class Igreja < ApplicationRecord
  has_many :atracoes, as: :turistico
  has_many :pacotes, through: :atracoes
end

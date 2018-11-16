class Atracao < ApplicationRecord
  belongs_to :endereco
  belongs_to :turistico, polymorphic: true
  has_many :oferecimentos
  has_many :pacotes, through: :oferecimentos
end

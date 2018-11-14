class Cliente < ApplicationRecord
  has_many :compras
  has_many :pacotes, through: :compras
end

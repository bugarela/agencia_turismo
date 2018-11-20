class Cliente < ApplicationRecord
  has_many :compras
  has_many :pacotes, through: :compras
  accepts_nested_attributes_for :compras, allow_destroy: true
end

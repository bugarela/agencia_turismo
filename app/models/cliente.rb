class Cliente < ApplicationRecord
  has_many :compras
  has_many :pacotes, through: :compras
  accepts_nested_attributes_for :compras, allow_destroy: true

  validates :cpf, :nome, :email, :telefone, presence: true
  
  validates :cpf, numericality: { only_integer: true }, length: {is: 11}
  validates :telefone, numericality: { only_integer: true }, length: {minimum: 8}
end

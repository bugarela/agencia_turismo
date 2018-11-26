class Cidade < ApplicationRecord
  has_many :hoteis, inverse_of: :cidade
  has_many :restaurantes, inverse_of: :cidade
  has_many :igrejas, inverse_of: :cidade
  has_many :parques, inverse_of: :cidade
  has_many :casa_de_shows, inverse_of: :cidade

  validates :nome, :estado, :populacao, presence: true
  validates_associated :hoteis
  validates_associated :restaurantes

  validates :estado, format: { with: /\A[A-Z]{2}\z/,
    message: "deve conter apenas o UF" }
  validates :populacao, numericality: { only_integer: true }
end

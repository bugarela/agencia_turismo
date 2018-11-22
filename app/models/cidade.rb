class Cidade < ApplicationRecord
  has_many :hoteis, inverse_of: :cidade
  has_many :restaurantes, inverse_of: :cidade
end

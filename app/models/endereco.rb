class Endereco < ApplicationRecord
  validates :logradouro, :numero, :cep, presence: true

  validates :numero, numericality: { only_integer: true }
  validates :cep, numericality: { only_integer: true }, length: {is: 8}

end

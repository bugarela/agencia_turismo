class Compra < ApplicationRecord
  belongs_to :cliente
  belongs_to :pacote
  accepts_nested_attributes_for :cliente, allow_destroy: true

  def cpf_cliente=(cpf)
      self.cliente = Cliente.find_by(cpf: cpf)
  end

  def cpf_cliente
      self.cliente ? self.cliente.cpf : nil
  end
end

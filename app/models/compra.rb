class Compra < ApplicationRecord
  belongs_to :cliente
  belongs_to :pacote

  def cpf_cliente=(cpf)
      self.cliente = Cliente.find_by(cpf: cpf)
  end

  def cpf_cliente
      self.cliente ? self.cliente.cpf : nil
  end
end

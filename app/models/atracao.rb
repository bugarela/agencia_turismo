class Atracao < ApplicationRecord
  belongs_to :pacote
  belongs_to :turistico, polymorphic: true
end

public

  def descricao
    turistico.descricao
  end

  def endereco
    turistico.endereco
  end

class Pacote < ApplicationRecord
  belongs_to :cidade
  has_many :compras, inverse_of: :pacote
  has_many :clientes, through: :compras
  has_many :atracoes
  has_many :igrejas, through: :atracoes, source: :turistico, source_type: :'Igreja'

  def description
      descricao_atracoes = atracao_ids.map {|id| Atracao.find(id).descricao}.compact
      return cidade.nome, descricao_atracoes
  end
end

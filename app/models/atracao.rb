class Atracao < ApplicationRecord
  belongs_to :endereco
  belongs_to :pacote
  belongs_to :turistico, polymorphic: true
end

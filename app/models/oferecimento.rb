class Oferecimento < ApplicationRecord
  belongs_to :pacote
  belongs_to :atracao
end

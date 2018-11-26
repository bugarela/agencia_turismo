class Fundacao < ApplicationRecord
  belongs_to :museu
  belongs_to :fundador
end

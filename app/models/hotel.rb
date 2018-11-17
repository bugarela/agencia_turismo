class Hotel < ApplicationRecord
  belongs_to :endereco
  belongs_to :cidade
end

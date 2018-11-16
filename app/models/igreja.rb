class Igreja < ApplicationRecord
  has_many :atracoes, as: :turistico
end

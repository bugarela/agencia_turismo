class Fundador < ApplicationRecord
    has_many :fundacoes
    has_many :museus, through: :fundacoes

    def bio
        data_morte_safe = data_morte ? data_morte.strftime('%d/%m/%Y') : "hoje"
        (nome + " (" + data_nasc.strftime('%d/%m/%Y') + " - " + data_morte_safe + "), nascido em " + nacionalidade)
    end
end

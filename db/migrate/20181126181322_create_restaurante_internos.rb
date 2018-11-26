class CreateRestauranteInternos < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurante_internos do |t|
      t.decimal :preco_medio
      t.string :especialidade
      t.references :casa_de_show, foreign_key: true

      t.timestamps
    end
  end
end

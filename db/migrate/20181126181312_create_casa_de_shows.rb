class CreateCasaDeShows < ActiveRecord::Migration[5.2]
  def change
    create_table :casa_de_shows do |t|
      t.text :descricao
      t.integer :hora_inicio
      t.integer :dia_fechamento
      t.references :cidade, foreign_key: true
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end

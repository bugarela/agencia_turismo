class CreateMuseus < ActiveRecord::Migration[5.2]
  def change
    create_table :museus do |t|
      t.text :descricao
      t.date :data_fundacao
      t.integer :n_salas
      t.references :cidade, foreign_key: true
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRestaurantes < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :categoria
      t.references :endereco, foreign_key: true
      t.references :cidade, foreign_key: true
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end

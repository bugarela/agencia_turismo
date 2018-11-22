class CreateIgrejas < ActiveRecord::Migration[5.2]
  def change
    create_table :igrejas do |t|
      t.date :data_construcao
      t.string :estilo_construcao
      t.text :descricao
      t.references :endereco, foreign_key: true
      t.references :cidade, foreign_key: true

      t.timestamps
    end
  end
end

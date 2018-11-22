class CreateParques < ActiveRecord::Migration[5.2]
  def change
    create_table :parques do |t|
      t.text :descricao
      t.references :endereco, foreign_key: true
      t.references :cidade, foreign_key: true

      t.timestamps
    end
  end
end

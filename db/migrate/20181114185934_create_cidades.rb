class CreateCidades < ActiveRecord::Migration[5.2]
  def change
    create_table :cidades do |t|
      t.string :nome
      t.string :estado
      t.integer :populacao

      t.timestamps
    end
  end
end

class CreateQuartos < ActiveRecord::Migration[5.2]
  def change
    create_table :quartos do |t|
      t.integer :numero
      t.references :tipo_de_quarto, foreign_key: true

      t.timestamps
    end
  end
end

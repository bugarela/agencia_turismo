class CreatePacotes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacotes do |t|
      t.decimal :valor
      t.date :data_inicio
      t.date :data_fim
      t.references :cidade, foreign_key: true

      t.timestamps
    end
  end
end

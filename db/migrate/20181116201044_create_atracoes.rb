class CreateAtracoes < ActiveRecord::Migration[5.2]
  def change
    create_table :atracoes do |t|
      t.references :pacote, foreign_key: true
      t.date :dia_visita
      t.integer :turistico_id
      t.string :turistico_type

      t.timestamps
    end
    add_index :atracoes, [:turistico_id, :turistico_type]
  end
end

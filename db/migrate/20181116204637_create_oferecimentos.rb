class CreateOferecimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :oferecimentos do |t|
      t.references :pacote, foreign_key: true
      t.references :atracao, foreign_key: true

      t.timestamps
    end
  end
end

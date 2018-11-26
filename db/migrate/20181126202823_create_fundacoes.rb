class CreateFundacoes < ActiveRecord::Migration[5.2]
  def change
    create_table :fundacoes do |t|
      t.references :museu, foreign_key: true
      t.references :fundador, foreign_key: true

      t.timestamps
    end
  end
end

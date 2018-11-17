class CreateTipoDeQuartos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_de_quartos do |t|
      t.string :nome
      t.money :valor_diaria
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end

class CreateFundadores < ActiveRecord::Migration[5.2]
  def change
    create_table :fundadores do |t|
      t.date :data_nasc
      t.date :data_morte
      t.string :nome
      t.string :nacionalidade
      t.string :atividade

      t.timestamps
    end
  end
end

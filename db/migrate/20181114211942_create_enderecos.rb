class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.integer :numero
      t.string :cep

      t.timestamps
    end
  end
end

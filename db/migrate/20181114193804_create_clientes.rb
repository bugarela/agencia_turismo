class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :cpf, limit: 11
      t.string :nome
      t.string :email
      t.string :telefone
      t.index ["cpf"], unique: true

      t.timestamps
    end
  end
end

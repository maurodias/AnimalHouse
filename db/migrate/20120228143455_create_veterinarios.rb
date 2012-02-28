class CreateVeterinarios < ActiveRecord::Migration
  def change
    create_table :veterinarios do |t|
      t.string :crmv
      t.string :status
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :endereco
      t.string :CEP
      t.string :nota
      t.string :imageURL
      t.string :detalhes
      t.string :admin
      t.string :login
      t.string :pass
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end

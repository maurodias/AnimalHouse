class CreateVeterinarios < ActiveRecord::Migration
  def change
    create_table :veterinarios do |t|
      t.string :crmv
      t.string :status
      t.string :telefone
      t.string :email
      t.string :endereco
      t.string :cep
      t.string :nota
      t.string :dtModificacao
      t.string :login
      t.string :pass
      t.string :fotoperfil

      t.timestamps
    end
  end
end

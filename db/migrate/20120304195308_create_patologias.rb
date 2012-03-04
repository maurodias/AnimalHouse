class CreatePatologias < ActiveRecord::Migration
  def change
    create_table :patologias do |t|
      t.string :nome
      t.string :nomePopular
      t.string :detalhes
      t.references :especialidade
      t.references :item

      t.timestamps
    end
    add_index :patologias, :especialidade_id
    add_index :patologias, :item_id
  end
end

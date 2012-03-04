class CreatePatologia < ActiveRecord::Migration
  def change
    create_table :patologia do |t|
      t.string :nomepopular
      t.string :nome
      t.string :detalhes
      t.references :item
      t.references :especialidade

      t.timestamps
    end
    add_index :patologia, :item_id
    add_index :patologia, :especialidade_id
  end
end

class CreateSintomas < ActiveRecord::Migration
  def change
    create_table :sintomas do |t|
      t.string :nome
      t.string :detalhes
      t.references :item

      t.timestamps
    end
    add_index :sintomas, :item_id
  end
end

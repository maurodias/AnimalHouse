class CreateRelatos < ActiveRecord::Migration
  def change
    create_table :relatos do |t|
      t.string :detalhes
      t.references :item
      t.references :patologia

      t.timestamps
    end
    add_index :relatos, :item_id
    add_index :relatos, :patologia_id
  end
end

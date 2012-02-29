class CreateEdicaos < ActiveRecord::Migration
  def change
    create_table :edicaos do |t|
      t.string :status
      t.string :camposEditado
      t.references :veterinario
      t.references :item

      t.timestamps
    end
    add_index :edicaos, :veterinario_id
    add_index :edicaos, :item_id
  end
end

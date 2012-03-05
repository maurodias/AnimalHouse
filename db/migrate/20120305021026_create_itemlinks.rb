class CreateItemlinks < ActiveRecord::Migration
  def change
    create_table :itemlinks do |t|
      t.string :status
      t.references :veterinario

      t.timestamps
    end
    add_index :itemlinks, :veterinario_id
  end
end

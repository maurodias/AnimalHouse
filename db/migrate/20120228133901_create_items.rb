class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :satus
      t.references :veterinario

      t.timestamps
    end
    add_index :items, :veterinario_id
  end
end

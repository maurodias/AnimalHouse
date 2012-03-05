class CreateVetxespecialidades < ActiveRecord::Migration
  def change
    create_table :vetxespecialidades do |t|
      t.references :itemlink
      t.references :veterinario
      t.references :especialidade

      t.timestamps
    end
    add_index :vetxespecialidades, :itemlink_id
    add_index :vetxespecialidades, :veterinario_id
    add_index :vetxespecialidades, :especialidade_id
  end
end

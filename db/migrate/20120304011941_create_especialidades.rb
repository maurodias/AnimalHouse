class CreateEspecialidades < ActiveRecord::Migration
  def change
    create_table :especialidades do |t|
      t.string :nome
      t.string :detalhes
      t.references :item

      t.timestamps
    end
    add_index :especialidades, :item_id
  end
end

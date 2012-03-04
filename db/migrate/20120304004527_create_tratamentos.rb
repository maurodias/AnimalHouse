class CreateTratamentos < ActiveRecord::Migration
  def change
    create_table :tratamentos do |t|
      t.string :nome
      t.string :detalhes
      t.references :item

      t.timestamps
    end
    add_index :tratamentos, :item_id
  end
end

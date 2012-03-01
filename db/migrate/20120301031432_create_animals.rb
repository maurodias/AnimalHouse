class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :nomeCientifico
      t.string :nomePopular
      t.string :detalhes
      t.references :item

      t.timestamps
    end
    add_index :animals, :item_id
  end
end

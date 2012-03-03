class CreateRacas < ActiveRecord::Migration
  def change
    create_table :racas do |t|
      t.references :animal
      t.string :origem
      t.string :nome
      t.string :detalhes
      t.references :item

      t.timestamps
    end
    add_index :racas, :animal_id
    add_index :racas, :item_id
  end
end

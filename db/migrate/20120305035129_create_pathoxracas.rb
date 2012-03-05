class CreatePathoxracas < ActiveRecord::Migration
  def change
    create_table :pathoxracas do |t|
      t.references :itemlink
      t.references :patologia
      t.references :raca

      t.timestamps
    end
    add_index :pathoxracas, :itemlink_id
    add_index :pathoxracas, :patologia_id
    add_index :pathoxracas, :raca_id
  end
end

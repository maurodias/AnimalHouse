class CreatePathoxsintomas < ActiveRecord::Migration
  def change
    create_table :pathoxsintomas do |t|
      t.references :itemlink
      t.references :patologia
      t.references :sintoma

      t.timestamps
    end
    add_index :pathoxsintomas, :itemlink_id
    add_index :pathoxsintomas, :patologia_id
    add_index :pathoxsintomas, :sintoma_id
  end
end

class CreatePathoxtratamentos < ActiveRecord::Migration
  def change
    create_table :pathoxtratamentos do |t|
      t.references :itemlink
      t.references :patologia
      t.references :tratamento

      t.timestamps
    end
    add_index :pathoxtratamentos, :itemlink_id
    add_index :pathoxtratamentos, :patologia_id
    add_index :pathoxtratamentos, :tratamento_id
  end
end

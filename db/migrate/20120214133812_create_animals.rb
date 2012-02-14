class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :nome
      t.string :nomePopular
      t.string :status
      t.string :dtModificacao
      t.references :veterinario

      t.timestamps
    end
    add_index :animals, :veterinario_id
  end
end

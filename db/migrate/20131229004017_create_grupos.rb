class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.integer :num_grupo
      t.string :nombre
      t.integer :num_componentes

      t.timestamps
    end
  end
end

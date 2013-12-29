class CreateTribunals < ActiveRecord::Migration
  def change
    create_table :tribunals do |t|
      t.integer :num_tribunal
      t.string :lugar_examen
      t.integer :num_componentes

      t.timestamps
    end
  end
end

class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :num_matricula
      t.string :dni
      t.string :nombre
      t.string :apellidos

      t.timestamps
    end
  end
end

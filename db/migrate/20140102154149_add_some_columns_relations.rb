class AddSomeColumnsRelations < ActiveRecord::Migration
  def up
    add_column :alumnos, :tfg_id, :integer
    add_column :tfgs, :alumno_id, :integer

    add_column :alumnos, :grupo_id, :integer
    add_column :grupos, :alumno_id, :integer

    add_column :profesors, :alumno_id, :integer
    add_column :alumnos, :profesor_id, :integer

    add_column :tribunals, :tfg_id, :integer
    add_column :tfgs, :tribunal_id, :integer
  end

  def down
    add_column :alumnos, :tfg_id
    add_column :tfgs, :alumno_id

    add_column :alumnos, :grupo_id
    add_column :grupo, :alumno_id

    add_column :profesors, :alumno_id
    add_column :alumno, :profesor_id

    add_column :tribunals, :tfg_id
    add_column :tfg, :tribunal_id
  end
end

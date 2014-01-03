class CreateAlumnosGrupoTable < ActiveRecord::Migration
  def change
    create_table :alumnos_grupos do |t|
      t.belongs_to :alumno
      t.belongs_to :grupo
    end

  end
end

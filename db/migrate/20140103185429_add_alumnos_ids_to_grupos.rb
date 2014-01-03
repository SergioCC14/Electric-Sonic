class AddAlumnosIdsToGrupos < ActiveRecord::Migration
  def up
    add_column :grupos, :alumno_ids, :text
  end

  def down
    remove_column :grupos, :alumno_ids
  end
end

class RemoveFromGrupo < ActiveRecord::Migration
  def up
    remove_column :grupos, :alumno_id
  end

  def down
    add_column :grupos, :alumno_id, :integer
  end
end

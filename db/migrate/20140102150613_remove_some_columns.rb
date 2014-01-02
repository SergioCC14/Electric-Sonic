class RemoveSomeColumns < ActiveRecord::Migration
  def up
    remove_column :alumnos, :num_matricula
    remove_column :grupos, :num_grupo
    remove_column :tfgs, :num_orden
    remove_column :tribunals, :num_tribunal
  end

  def down
    add_column :alumnos, :num_matricula, :integer
    add_column :grupos, :num_grupo, :integer
    add_column :tfgs, :num_orden, :integer
    add_column :tribunals, :num_tribunal, :integer
  end
end

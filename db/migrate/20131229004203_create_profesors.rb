class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :dni
      t.string :nombre
      t.string :apellidos
      t.string :domicilio

      t.timestamps
    end
  end
end

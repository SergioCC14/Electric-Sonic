class CreateTfgs < ActiveRecord::Migration
  def change
    create_table :tfgs do |t|
      t.string :tema
      t.integer :num_orden
      t.date :fecha_comienzo

      t.timestamps
    end
  end
end

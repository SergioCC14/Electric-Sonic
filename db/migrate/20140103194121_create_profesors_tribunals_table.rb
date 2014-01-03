class CreateProfesorsTribunalsTable < ActiveRecord::Migration
  def change
    create_table :profesors_tribunals do |t|
      t.belongs_to :tribunal
      t.belongs_to :profesor
    end

  end
end
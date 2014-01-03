class Alumno < ActiveRecord::Base

  attr_accessible :num_matricula, :dni, :nombre, :apellidos, :tfg_id, :tfg, :profesor_id, :grupo_ids, :grupo_id

  has_one :tfg
  
  has_and_belongs_to_many :grupos

  belongs_to :profesor

end
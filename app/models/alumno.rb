class Alumno < ActiveRecord::Base

  attr_accessible :num_matricula, :dni, :nombre, :apellidos, :tfg_id, :tfg, :profesor_id, :grupo_id

  has_one :tfg
  
  belongs_to :grupo
  belongs_to :profesor

end
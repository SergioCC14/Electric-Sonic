class Alumno < ActiveRecord::Base

  attr_accessible :num_matricula, :dni, :nombre, :apellidos

  has_many :tfg

end
class Grupo < ActiveRecord::Base

  attr_accessible :nombre, :num_componentes

  has_many :alumnos

end
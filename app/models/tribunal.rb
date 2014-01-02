class Tribunal < ActiveRecord::Base

  attr_accessible :lugar_examen, :num_componentes

  has_many :profesors

	# Un tribunal puede tener varios tfg, un tfg solo tiene un tribunal.
  has_many :tfg

  # Calcula componentes se lanza antes de guardarse
  before_save :calcula_componentes

  def calcula_componentes
    comp_actualizados = self.alumnos.count
    self.update_attributes(:num_componentes => comp_actualizados)
  end


end
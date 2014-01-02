class Tribunal < ActiveRecord::Base

  attr_accessible :lugar_examen, :num_componentes, :tfg_id

  has_many :profesors

	# Un tribunal puede tener varios tfg, un tfg solo tiene un tribunal.
  has_one :tfg

  # Calcula componentes se lanza antes de guardarse
  
  # after_save :calcula_componentes

  def calcula_componentes
    raise self.profesors.count
    comp_actualizados = self.profesors.count

    self.update_attributes(:num_componentes => comp_actualizados)
  end


end
class Grupo < ActiveRecord::Base

  attr_accessible :nombre, :num_componentes

  has_many :alumnos

  # Calcula componentes se lanza antes de guardarse
  before_save :calcula_componentes

  def calcula_componentes
    comp_actualizados = self.alumnos.count
    self.update_attributes(:num_componentes => comp_actualizados)
  end

end
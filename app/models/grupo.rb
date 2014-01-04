class Grupo < ActiveRecord::Base

  attr_accessible :nombre, :num_componentes, :alumno_ids

  has_and_belongs_to_many :alumnos

  # Calcula componentes se lanza antes de actualizarse
  before_update :calcula_componentes

  def calcula_componentes
    self.num_componentes = self.alumnos.count
  end

end
class Tribunal < ActiveRecord::Base

  attr_accessible :lugar_examen, :num_componentes, :tfg_id, :profesor_ids

  has_and_belongs_to_many :profesors

	# Un tribunal puede tener varios tfg, un tfg solo tiene un tribunal.
  has_one :tfg, :dependent => :destroy

  # Calcula componentes se lanza antes de actualizarse
  before_update :calcula_componentes

  def calcula_componentes
    self.num_componentes = self.profesors.count
  end

end
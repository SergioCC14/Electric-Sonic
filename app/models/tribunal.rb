class Tribunal < ActiveRecord::Base

  attr_accessible :lugar_examen, :num_componentes

  has_many :profesors

	# Un tribunal puede tener varios tfg, un tfg solo tiene un tribunal.
  has_many :tfg


end
class Tfg < ActiveRecord::Base

  attr_accessible :tema, :fecha_comienzo

  belongs_to :alumno

end
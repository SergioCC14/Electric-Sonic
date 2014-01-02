class Tfg < ActiveRecord::Base

  attr_accessible :tema, :fecha_comienzo, :alumno_id

  belongs_to :alumno

end
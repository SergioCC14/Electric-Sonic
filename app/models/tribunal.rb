class Tribunal < ActiveRecord::Base

  attr_accessible :lugar_examen, :num_componentes

  has_many :profesors

  has_one :tfg


end
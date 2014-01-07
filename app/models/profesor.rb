class Profesor < ActiveRecord::Base

    attr_accessible :domicilio, :dni, :nombre, :apellidos

    has_one :alumno
    has_and_belongs_to_many :tribunals

end


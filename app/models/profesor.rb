class Profesor < ActiveRecord::Base

    attr_accessible :domicilio, :dni, :nombre, :apellidos

    has_many :alumnos

    # Pensa una manera para saber si un profesor es el que dirije el TFG al alumno o, simplemente, le ayuda

end
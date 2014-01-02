class Profesor < ActiveRecord::Base

    attr_accessible :domicilio, :dni, :nombre, :apellidos

    has_one :alumno

    has_many :tribunals

    # Pensa una manera para saber si un profesor es el que dirije el TFG al alumno o, simplemente, le ayuda
    
    # He pensado. Profesores están en alumnos, aunque crea un triangulo de la muerte a lo mejor con tribunal.
    # Y luego en alumno hay una clave profesor encargado o algo asi, que es 1 solo y es el que dirigue el tfg.
end
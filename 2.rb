class MiClase
    attr_writer :name
    def initialize(name)
        @name = name
    end
    def self.saludar
        "Hola! Soy la clase #{name}"
    end
end
c = MiClase.new('MiClase')

puts MiClase.saludar


# c.name = 'Nombre Nuevo'
# puts MiClase.saludar
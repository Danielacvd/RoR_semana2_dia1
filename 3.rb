class Vehicle
    def initialize(model, year)
        @model = model
        @year = year
        @start = false
    end

    def engine_start
        @start = true
    end
end

class Car < Vehicle
    @@instances = 0
    def initialize
        @@instances += 1
    end
    def engine_start
        puts "El motor se encendio"
    end

    def self.cars
        @@instances
    end

end

#creando y contando fuera de los metodos de la clase hija Car
# cars = []
# i = 0
# 10.times do |x|
#     cars << Car.new
#     i += 1
# end
# puts "Entra #{i} veces"
# puts cars
#Car.new.engine_start


# Creando los 10 autos en una sola linea
10.times {Car.new.engine_start}
puts "Se han fabricado #{Car.cars} Cars"
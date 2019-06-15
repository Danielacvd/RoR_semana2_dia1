module Test
    def result(a, b)
        average = (a+b)/2
        if average > 4
             "#aprobado con un promedio #{average}"
        else
             "reprobado con un promedio #{average}"
        end
    end
end

module Attendance
    def self.student_quantity
        puts Student.get_number_of_quantity
    end
end

class Student
    attr_accessor :nombre, :notas1, :notas2
    include Test
    extend Attendance
    @@quantity = 0
    def initialize(nombre='student', notas1 = 4, notas2 = 4)
        @nombre = nombre
        @notas1 = notas1
        @notas2 = notas2
        @@quantity += 1
    end
    def self.get_number_of_quantity
        @@quantity
    end
end
10.times do |i|
    alumno = Student.new("Alumno #{i} con notas :",rand(1..7), rand(1..7))
    puts "#{alumno.nombre}, #{alumno.notas1}, #{alumno.notas2}, #{alumno.result(alumno.notas1, alumno.notas2)}"
end
#puts Attendance.student_quantity
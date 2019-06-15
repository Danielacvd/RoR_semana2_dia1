module Test
    def self.result(a, b)
        average = (a+b)/2
        if average > 4
            puts "aprobado"
        else
            puts "reprobado"
        end
    end
end

module Attendance
    def self.student_quantity
        10.times do |i|
            Student.new("mauro#{i}",rand(1..7), rand(1..7))
        end
        puts Student.get_number_of_quantity
    end
end
class Student
    incluse Test
    extend Attendance
    @@quantity = 0
    def initialize(nombre='student', nota1 = 4, nota2 = 4)
        @nombre = nombre
        @notas1 = notas1
        @notas2 = notas2
        @@quantity += 1
    end
    def self.get_number_of_quantity
        @@quantity
    end
end
puts Attendance.student_quantity
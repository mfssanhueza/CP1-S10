module Test
  def result
    average = (@nota1 + @nota2) / 2.0
      puts "Estudiante aprobado con nota #{average}" if average >=4
      puts "Estudiante reprobado con nota #{average}" if average <=4
  end
end

module Attendance
  def self.student_quantity
    puts @@quantity
  end
end

class Student
  include Test
  extend Attendance
  @@quantity = 0

  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
end

module Test
  def self.result
    average = (@nota1 + @nota2)/2
    if average >= 4
      puts 'Estudiante aprobado'
    else puts 'Estudiante reprobado'
    end
  end
end

student1 = Student.new('ale', 5, 2)
puts student1.result
Student::Attendance

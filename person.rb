# Ejercicio 1

# Utilizando los principios de herencia y polimorfismo, refactoriza el código dado en el ejercicio para eliminar la cantidad innecesaria de sentencias if en los métodos ask e introduce

class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}"
    end
end

class Teacher < Person
    def talk
        puts "¡Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola Alumnos. Mi nombre es #{@first_name} #{@last_name} "
    end
end

class Parent < Person
    def talk 
        puts "¿Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}"
    end
end

puts "Answers"
puts
student = Student.new('Victoria', 'Cortez', 12)
student.talk
student.introduce
puts
teacher = Teacher.new('Graciela', 'Sandoval', 55)
teacher.talk
teacher.introduce
puts
parent = Parent.new('Ginette', 'Catalán', 38)
parent.talk
parent.introduce
puts
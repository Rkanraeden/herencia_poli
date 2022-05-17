# Ejercicio 2 

# Crear la clase animal con un atributo nombre. Agregar un metodo getter para el atributo nombre

# crear las clases Ave, Mamifero e Insecto. Ambas heredan de animal

# crear las clases Pinguino, Paloma y Pato. Las tres heredan de Ave.

# crear las clases Perro, Gato y Vaca. Las tres heredan de Mamifero.

# Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de insecto.

# Incluye los módulos en cada sub clase utilizando la instruccion include con el objetivo de definir las habilidades y tipo de alimentación de cada animal

# Dado los siguientes módulos.

module Habilidades
    module Volador
        def volar 
            '¡estoy volandoooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    
    module Nadador
        def nadar 
            'estoy nadando'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'puedo caminar'
        end
    end
end



module Alimentacion
    module Herbivoro
        def comer
            'puedo comer plantas'
        end
    end

    module Carnivoro
        def comer
            'puedo comer carne'
        end
    end
end

# Crear la clase animal

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
    include Habilidades
    include Alimentacion
end

class Mamifero < Animal
    include Habilidades
    include Alimentacion
end

class Insecto < Animal
    include Habilidades
    include Alimentacion
end

class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
    include Habilidades::Caminante
end

class Perro < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Mosca < Insecto
    include Alimentacion::Carnivoro
    include Habilidades::Volador
end

class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

# Validamos respuestas

puts Vaca.new("lola").caminar
puts Mosca.new("Tse-Tse").volar
puts Pato.new("duffy").comer
puts Abeja.new("Barry").aterrizar
puts Pinguino.new("Skipper").nadar



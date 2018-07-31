# Se tiene la clase Morseable que contiene un metodo de instancia generate_hash
# los datos de traduccion de numero entero a codigo morse.
class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash
    hash = { 0 => '-----',
             1 => '.----',
             2 => '..---',
             3 => '...--',
             4 => '....-',
             5 => '.....',
             6 => '-....',
             7 => '--...',
             8 => '---..',
             9 => '----.' }
    puts hash[@number]
  end
  # def to_morse
  #  generate_hash[@number]
  # end
end

m = Morseable.new(3)
m.generate_hash
# print m.to_morse

# Refactorizar el codigo del metodo de instancia generate_hash
# para que los datos esten contenidos en un hash donde los numeros seran
# las claves y la traduccion los valores.
# El metodo generate_hash ademas debe retornar
# la traduccion del numero recibido como argumento.

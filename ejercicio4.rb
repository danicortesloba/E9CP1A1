# Crea una clase llamada Dog cuyo constructor reciba como argumento
# un hash con la siguiente estructura:
# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Cafe'}
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
# Luego generar un metodo llamado ladrar que, mediante interpolacion,
# imprima "Beethoven esta ladrando!"
class Dog
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando"
  end
end

propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

Dog.new(propiedades).ladrar

# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los
# productos que ofrece una tienda junto con los precios de las tallas
# L, M, S y XS.
# El siguiente codigo define la clase Product y ademas realiza la lectura
# del archivo.
class Product
  attr_accessor :name, :prices
  def initialize(name, *prices)
    @name = name
    @prices = prices.map(&:to_i)
  end

  def average
    puts @prices.inject(&:+) / prices.size
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls).average
end

# Optimizar el codigo implementandoel operador splat al momento
# de instanciar los productosri

# Generar un metodo que permita calcular el promedio de precio por producto.

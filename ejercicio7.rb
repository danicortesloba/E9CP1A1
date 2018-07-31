# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catalogo que no incluya el ultimo precio
# correspondiente a cada producto debido a que ya no comercializa productos
# de talla XS.
# Se pide generar un metodo que reciba como argumento los datos del archivo
# catalogo.txt y luego imprima el nuevo catalogo solicitado en un archivo
# llamado nuevo_catalogo.txt
class Product
  attr_accessor :name, :prices, :ls
  def erase(products)
    file = File.open('nuevo_catalogo.txt', 'w')
    products.each do |prod|
      ls = prod.split(', ').map(&:chomp)
      name = ls.shift
      ls.pop
      file.puts "Los precios de #{name} son #{ls}"
    end
    file.close
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
products_list << Product.new.erase(data)

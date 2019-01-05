
## Ejercicio 6: Objetos y archivos.
# Se tiene un archivo llamado *catalogo.txt* que contiene los nombres de los productos que ofrece una tienda junto con los precios de las tallas *L, M, S y XS*.


# Polera, 10990, 7990, 4990, 2990
# Jeans, 14990, 10990, 7990, 5990
# Poleron, 12990, 8990, 5990, 3990
# Chaleco, 11990, 8990, 6990, 4990
# Parka, 19990, 14990,  11990, 9990


# El siguiente código define la clase *Product* y además realiza la lectura del archivo.


class Product
  attr_accessor :name, :large, :medium, :small ,:xsmall, :nuevo_array_sizes
  def initialize(name, *sizes)
    @name = name
    @large = sizes[1].to_i
    @medium = sizes[2].to_i
    @small = sizes[3].to_i
    @xsmall = sizes[4].to_i
    @nuevo_array_sizes = [@large,@medium,@small,@xsmall]
  end
  def avarage()
    avg = @nuevo_array_sizes.sum/@nuevo_array_sizes.length
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], *ls)
end

products_list.each do |product|
   puts "#{product.name} tiene un promedio de #{product.avarage}"
end


# Se pide:

# - Optimizar el código implementando el operador *splat* al momento de instanciar los productos

# - Generar un método que permita calcular el promedio de precio por producto.

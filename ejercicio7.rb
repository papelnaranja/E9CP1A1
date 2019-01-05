# Utilizando el mismo archivo del ejercicio anterior:

# La tienda desea generar un nuevo catálogo que **no incluya** el último precio correspondiente a cada producto debido a que ya no comercializa productos de talla *XS*.

# Se pide **generar un método** que reciba como argumento los datos del archivo *catalogo.txt* y luego imprima el nuevo catálogo solicitado en un archivo llamado *nuevo_catalogo.txt*


class Product
  attr_accessor :name, :large, :medium, :small ,:xsmall, :products
  def initialize(name, *sizes, xs)
    @name = name
    @large = sizes[1].to_i
    @medium = sizes[2].to_i
    @small = sizes[3].to_i
    @xsmall = xs.to_i
  end
  def nuevo_cat
    @products = [@name, @large,@medium,@small]
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], *ls)
end

file = File.open('nuevo_catalogo.txt', 'w')
products_list.map {|product| file.puts product.nuevo_cat.join(", ") }
file.close


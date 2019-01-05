
## Ejercicio 3: Sintaxis.

#Copia el siguiente código y ejecútalo. Luego corrige los errores para poder imprimir el nombre de la tienda.

class Store
    attr_reader :name
  def initialize(name)
  	@name = name
  end
end
store = Store.new('Tienda 1')
puts store.name

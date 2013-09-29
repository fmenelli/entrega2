class Product
  attr_accessor :code
  attr_accessor :nombre
  attr_accessor :precio

  def initialize(code, nomb, prec)
    self.code = code
    self.nombre = nomb
    self.precio = prec

  end

end


class Purchase
  attr_accessor :products

  def initialize
     self.products = []
  end

  def add(product)
     self.products.push(product)
  end

  def remove (product)
    self.products.delete product
  end

  def total
    self.products.inject { |sum, prod| sum + prod.precio }
  end

  def apply_discount
      yield self
  end
end


p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2


#Si la lista de productos tiene más de 10 productos, se cobra el 20% menos
p.apply_discount do |purchase|
  purchase.total -= purchase.total * 0.2 if purchase.products.size > 10
end

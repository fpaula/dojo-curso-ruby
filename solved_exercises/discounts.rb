require 'colorize'
require_relative 'assert'

def total_price(shopping_cart)
  total = 0
  tipo  = 0
  shopping_cart.each do |item|
   total += item[:value]

   if item[:type] == "pizza"
     tipo += 1
   end
  end

  if total > 30
    total = total - (0.1 * total)
  end

  if tipo >= 2
    total = total - 4
  end

  total
end

shopping_cart = []
assert(total_price(shopping_cart), 0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 }
]
assert(total_price(shopping_cart), 25.0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'petit_gateau', type: 'sobremesa', value: 10.0 }
]
assert(total_price(shopping_cart),31.5) # 10% discount

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'pizza de chocolate', type: 'pizza', value: 15.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'sorvete', type: 'sobremesa', value: 10.0 }
]
assert(total_price(shopping_cart), 41) # 10% discount - R$ 4,00

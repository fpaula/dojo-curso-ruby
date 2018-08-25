require 'colorize'
require_relative 'assert'

def total_price(shopping_cart)
end

shopping_cart = []
assert(total_price(shopping_cart, 0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 }
]
assert(total_price(shopping_cart, 25.0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'petit_gateau', type: 'sobremesa', value: 10.0 }
]
assert(total_price(shopping_cart, 31.5) # 10% discount

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'pizza de chocolate', type: 'pizza', value: 15.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'sorvete', type: 'sobremesa', value: 10.0 }
]
assert(total_price(shopping_cart, 41) # 10% discount - R$ 4,00

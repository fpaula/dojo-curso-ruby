require 'colorize'
require_relative 'assert'

shopping_cart = []
assert(ShoppingCart.new(shopping_cart).total_price, 0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 }
]
assert(ShoppingCart.new(shopping_cart).total_price, 25.0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'petit_gateau', type: 'sobremesa', value: 10.0 }
]
assert(ShoppingCart.new(shopping_cart).total_price, 31.5) # 10% discount

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'pizza de chocolate', type: 'pizza', value: 15.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'sorvete', type: 'sobremesa', value: 10.0 }
]
assert(ShoppingCart.new(shopping_cart).total_price, 41) # 10% discount - R$ 4,00

shopping_cart = [
  { product: 'Camisa azul', type: 'vestuário', value: 25.0 },
  { product: 'Bermuda xadrez', type: 'vestuário', value: 15.0 },
  { product: 'Meias', type: 'vestuário', value: 5.0 }
]
assert(ShoppingCart.new(shopping_cart).cupom, 0.3)

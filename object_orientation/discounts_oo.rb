require 'colorize'
require_relative 'assert'
require_relative 'shopping_cart'

# Objetivo: refazer o exercício do arquivo `discounts.rb` com orientação a
# objetos. A lógica de cálculo de preço deve estar dentro de uma classe
# chamada ShoppingCart e ela deve ser responsável por aplicar todos os descontos
# propostos em aula.
#
# Os descontos são:
#
# * 10% de desconto se o preço total for superior a R$ 30,00
# * 15% de desconto se o preço total for superior a R$ 60,00 (essa regra tem
#   prioridade sobre a de cima, os descontos não são cumulativos)
# * 20% de desconto se o preço total for superior a R$ 90,00 (essa regra tem
#   prioridade sobre as de cima, os descontos não são cumulativos)
# * Remover 4 reais do valor final caso haja duas ou mais pizzas no carrinho
# * Oferecer um cupom de desconto caso o carrinho contenha 3 ou mais peças de
#   vestuário.

shopping_cart = []
assert(ShoppingCart.new.calculate_price(shopping_cart), 0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 }
]
assert(ShoppingCart.new.calculate_price(shopping_cart), 25.0)

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'petit_gateau', type: 'sobremesa', value: 10.0 }
]
assert(ShoppingCart.new.calculate_price(shopping_cart), 31.5) # 10% discount

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 10.0 },
  { product: 'petit_gateau', type: 'sobremesa', value: 50.0 }
]
assert(ShoppingCart.new.calculate_price(shopping_cart), 68) # 15% discount

shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'refrigerante', type: 'bebida', value: 10.0 },
  { product: 'petit_gateau', type: 'sobremesa', value: 70.0 }
]
assert(ShoppingCart.new.calculate_price(shopping_cart), 80) # 20% discount


shopping_cart = [
  { product: 'pizza 4 queijos', type: 'pizza', value: 20.0 },
  { product: 'pizza de chocolate', type: 'pizza', value: 15.0 },
  { product: 'refrigerante', type: 'bebida', value: 5.0 },
  { product: 'sorvete', type: 'sobremesa', value: 10.0 }
]
assert(ShoppingCart.new.calculate_price(shopping_cart), 41) # 10% discount - R$ 4,00
#
# shopping_cart = [
#   { product: 'Camisa azul', type: 'vestuário', value: 25.0 },
#   { product: 'Bermuda xadrez', type: 'vestuário', value: 15.0 },
#   { product: 'Meias', type: 'vestuário', value: 5.0 }
# ]
# assert(ShoppingCart.new(shopping_cart).cupom, 0.3)

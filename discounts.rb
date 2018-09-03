require 'colorize'
require_relative 'assert'

# Objetivo do exercício: criar um método `total_price`, que recebe como parâmtro
# um carrinho de compras (que é um array de hashes). Cada item do array é um
# hash com os seguintes atibutos:
#
# - product: o nome do produto
# - type: a categoria do produto (ex.: pizza, sobremesa, bebida, etc)
# - value: o preço do produto
#
# O método `total_price` deve calcular o preço total dos itens no carrinho,
# calculando todos os descontos de uma lista de descontos.
#
# Os descontos são:
#
# * 10% de desconto se o preço total for superior a R$ 30,00
# * Remover 4 reais do valor final caso haja duas ou mais pizzas no carrinho
#
# Um exemplo de implementação, feito durante a aula, pode ser encontrado dentro
# da pasta `solved_exercises/discounts.rb`.
def total_price(shopping_cart)
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

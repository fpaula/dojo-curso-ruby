require 'colorize'
require_relative 'assert'

# Objetivo do exercício: criar um método chamado `sum` que some todos os itens
# de uma progressão aritmética.
#
# A fórmula da soma dos itens de uma P.A. é:
#
# S = ((a1 + an) * n) / 2
#
# Onde:
#
# * a1: primeiro item da progressão aritmética
# * an: último item da progressão aritmética
# * n: número de itens da p.a.
#
# Um exemplo de implementação, feito durante a aula, pode ser encontrado dentro
# da pasta `solved_exercises/pa.rb`.
def sum(numbers)
end

assert(type([1, 3, 5]), 9)
assert(type([2, 5, 8, 11, 14, 17]), 57)
assert(type([1, 28, 55, 82]), 166)
assert(type([]), 0)

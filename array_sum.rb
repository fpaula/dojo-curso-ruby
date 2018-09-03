require 'colorize'
require_relative 'assert'

# Objetivo do exercício: criar um método chamado `sum` que some todos os itens
# de uma lista de números.
#
# Um exemplo de implementação, feito durante a aula, pode ser encontrado dentro da
# pasta `solved_exercises/array_sum.rb`.
def sum(numbers)
  return nil if numbers == []
  total_numbers = 0
  numbers.each do |numbers|
    total_numbers += numbers
  end
  total_numbers
end


assert(sum([1]), 1)
assert(sum([1, 2, 3]), 6)
assert(sum([9, 8, 7]), 24)
assert(sum([1, 12, 3]), 16)
assert(sum([]), nil)
assert(sum([1, 21, 12, 3, 0]), 37)
assert(sum([1, 3, 3]), 7)

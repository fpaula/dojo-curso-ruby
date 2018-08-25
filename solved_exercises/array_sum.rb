require 'colorize'
require_relative 'assert'

def sum(numbers)
  return nil if numbers.empty?

  sum_total = 0
  numbers.each do |number|
    sum_total += number
  end
  sum_total
end


assert(sum([1]), 1)
assert(sum([1, 2, 3]), 6)
assert(sum([9, 8, 7]), 24)
assert(sum([1, 12, 3]), 16)
assert(sum([]), nil)
assert(sum([1, 21, 12, 3, 0]), 37)
assert(sum([1, 3, 3]), 7)
puts 'Seu Teste está correto!'.green

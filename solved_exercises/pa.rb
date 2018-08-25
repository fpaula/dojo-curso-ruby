require 'colorize'
require_relative 'assert'

def type(numbers)
  return 0 if numbers.empty?

  (numbers.first + numbers.last) * numbers.length / 2
end

assert(type([]), 0)
assert(type([1, 3, 5]), 9)
assert(type([2, 5, 8, 11, 14, 17]), 57)
assert(type([1, 28, 55, 82]), 166)

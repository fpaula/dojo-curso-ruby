require 'colorize'
require_relative 'assert'

def sum(numbers)
end


assert(sum([1]), 1)
assert(sum([1, 2, 3]), 6)
assert(sum([9, 8, 7]), 9)
assert(sum([1, 12, 3]), 12)
assert(sum([]), nil)
assert(sum([1, 21, 12, 3, 0]), 21)
assert(sum([1, 3, 3]), 3)

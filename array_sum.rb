require 'colorize'
require_relative 'assert'

def sum(numbers)
end


assert(sum([1]), 1)
assert(sum([1, 2, 3]), 6)
assert(sum([9, 8, 7]), 24)
assert(sum([1, 12, 3]), 16)
assert(sum([]), nil)
assert(sum([1, 21, 12, 3, 0]), 37)
assert(sum([1, 3, 3]), 7)

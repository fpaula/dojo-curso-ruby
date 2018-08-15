require 'colorize'
require_relative 'assert'

def sum(numbers)
end

assert(type([1, 3, 5]), 9)
assert(type([2, 5, 8, 11, 14, 17]), 57)
assert(type([1, 28, 55, 82]), 166)
assert(type([]), 0)

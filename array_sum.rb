require 'colorize'
require_relative 'assert'

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

 puts "o teste funcionou"

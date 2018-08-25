require 'colorize'
require_relative 'assert'

def type(list)
  return nil if list.empty?

  list_of_types = []

  list.each do |item|
    list_of_types << item.class
  end

  list_of_types
end

assert(type([1]), [Fixnum])
assert(type([1.8]), [Float])
assert(type(['Text']), [String])
assert(type([nil]), [NilClass])
assert(type([]), nil)
assert(type([1, 'text', nil, 12.5]), [Fixnum, String, NilClass, Float])

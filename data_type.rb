require 'colorize'
require_relative 'assert'

def type(list)
end

assert(type([1]), [Fixnum])
assert(type([1.8]), [Float])
assert(type(['Text']), [String])
assert(type([nil]), [NilClass])
assert(type([]), nil)
assert(type([1, 'text', nil, 12.5]), [Fixnum, String, NilClass, Float])

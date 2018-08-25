require 'colorize'
require_relative 'assert'

# Objetivo do exercício: criar um método chamado `type` que itera em uma lista
# de objects e nos diz qual o tipo de cada um deles. O resultado deve ser também
# uma lista.
#
# Um exemplo de implementação, feito durante a aula, pode ser encontrado dentro
# da pasta `solved_exercises/data_type.rb`.
def type(list)
end

assert(type([1]), [Fixnum])
assert(type([1.8]), [Float])
assert(type(['Text']), [String])
assert(type([nil]), [NilClass])
assert(type([]), nil)
assert(type([1, 'text', nil, 12.5]), [Fixnum, String, NilClass, Float])

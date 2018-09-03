require_relative 'candy.rb'
require_relative 'chocolate.rb'
require_relative 'suspiro.rb'
require_relative 'donnut.rb'
require_relative 'bomboniere.rb'

# Chamada com parâmetros nomeados (kargs)
# lindt = Chocolate.new(quantity: 10)
# puts lindt.price
#
# suspiro = Suspiro.new(weight: 200)

lindt = Chocolate.new(10)
puts "Lindt: #{lindt.price}"

puts '-----------'
suspiro = Suspiro.new(200)
puts "Suspiro: #{suspiro.price}"

puts '-----------'
donnut = Donnut.new
puts "Donnut: #{donnut.price}"

puts 'Cabeçalho:'
bomboniere = Bomboniere.new([lindt, suspiro, donnut])
puts "Preço total: #{bomboniere.total_price}"

puts ''
puts 'Rodapé:'
puts "Preço total: #{bomboniere.total_price}"

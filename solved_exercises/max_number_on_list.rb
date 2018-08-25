# Encontre o maior número da lista
numbers = [4, 79, 33, 18, 55]
maior = 0
numbers.each do |number|
  maior = number if maior < number
end
puts "O maior número é #{maior}"

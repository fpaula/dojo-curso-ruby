data = [
  { age: 33, favorite_language: 'html' },
  { age: 20, favorite_language: 'php' },
  { age: 20, favorite_language: 'python' },
  { age: 22, favorite_language: 'python' },
  { age: 21, favorite_language: 'c' }
]

sum_age = 0
favorite_language = {}
favorite_language.default = 0
data.each do |user_info|
  age = user_info[:age]
  sum_age = sum_age + age
  language = user_info[:favorite_language]
  favorite_language[language] += 1
end

puts "A média de idade é: #{sum_age / data.count}"
puts "A linguagem mais legal é #{favorite_language.max.first}"
puts "Mentira, é ruby!"

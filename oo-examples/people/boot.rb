require_relative 'person'
require_relative 'user'
require_relative 'admin'
require_relative 'safe_area'

fred = Admin.new('Fred', 1981)
artur = User.new('Artur', 1982)

# puts "Artur pode acessar home? #{artur.has_permission?('home')}"
# # true
# puts "Artur pode acessar dashboard? #{artur.has_permission?('dashboard')}"
# # false
# puts ''
# puts "Fred pode acessar home? #{fred.has_permission?('home')}"
# # true
# puts "Fred pode acessar dashboard? #{fred.has_permission?('dashboard')}"
# # true

puts SafeArea.allow?(fred)
# puts SafeArea.allow?(artur)

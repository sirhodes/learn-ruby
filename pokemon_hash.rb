starter_pokemon = { 1 => "Bulbasaur", 2 => "Charizard", 3 => "Squirtle" }

puts "Please choose a number between 1 and 3"
choice = gets.chomp.to_i
puts "You selected #{starter_pokemon[choice]}!"
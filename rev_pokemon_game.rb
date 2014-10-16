class Pokemon
  attr_accessor :name, :type, :level, :health
  attr_reader :attacks
  def initialize(name, type, level)
    @name = name
    @type = type
    @level = level
    @health = 100
    @attacks = [['tackle',20],['bite',25],['quick attack',15],['special attack',40]]
  end
end

def battle(pokemon_one, pokemon_two)
  left_pokemon = pokemon_one
  right_pokemon = pokemon_two
  counter = 0

  puts "Ready to Battle! \nHealth levels are: #{left_pokemon.health} | #{right_pokemon.health}\n\n"
  while left_pokemon.health > 0 && right_pokemon.health > 0
    counter += 1; puts "Round #{counter}"
    left_pokemon_attack = left_pokemon.attacks.sample
    right_pokemon_attack = right_pokemon.attacks.sample
    puts left_pokemon_attack
    puts right_pokemon_attack

    left_pokemon.health -= right_pokemon_attack[1].to_i
    puts "#{left_pokemon.name} health : #{left_pokemon.health}"
    puts "#{left_pokemon.name} died." if left_pokemon.health <= 0
    break if left_pokemon.health <= 0

    right_pokemon.health -= left_pokemon_attack[1].to_i
    puts "#{right_pokemon.name} died." if right_pokemon.health <= 0
    puts "#{right_pokemon.name} health : #{right_pokemon.health}"
    puts "====="
    break if right_pokemon.health <= 0
  end
end

squirtle = Pokemon.new("Squirtle", "water", 10)
bulbasaur = Pokemon.new("Bulbasaur", "grass", 10 )

battle(squirtle, bulbasaur)

def createPokemon(name,type,level)
  pokemon = {:name => name, :type => type, :level => level}
  return pokemon
end

squirtle = createPokemon("Squirtle","water",5)
bulbasaur = createPokemon("Bulbasaur","grass",5)

pokemon = [squirtle,bulbasaur]
pokemon.each {|k| puts k }

attack_array = [['bite',30],['tackle',15],['quick attack', 10],['special attack', 45]]
def addAttacks(array, pokemon)

end

def battle(pokemon_one, pokemon_two)

end

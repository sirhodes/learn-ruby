pokemon = ['Bulbasaur', 'Charizard', 'Squirtle']


player_one_selection = rand(3)
player_two_selection = rand(3)

puts player_one_selection
counter = 0
until player_one_selection != player_two_selection
	counter += 1
	player_two_selection = rand(3)
	print "#{counter} "
end

puts player_two_selection

player_one_pkmn = pokemon[player_one_selection]
player_two_pkmn = pokemon[player_two_selection]


puts player_one_pkmn
puts player_two_pkmn

p1_dm = 1
p2_dm = 1

if player_one_pkmn == 'Bulbasaur' && player_two_pkmn == 'Charizard'
	p1_dm = 0.9
	p2_dm = 1.1
end
if player_one_pkmn == 'Squirtle' && player_two_pkmn == 'Charizard'
	p1_dm = 1.1
	p2_dm = 0.9
end
if player_one_pkmn == 'Bulbasaur' && player_two_pkmn == 'Squirtle'
	p1_dm = 1.1
	p2_dm = 0.9
end
if player_one_pkmn == 'Squirtle' && player_two_pkmn == 'Bulbasaur'
	p1_dm = 0.9
	p2_dm = 1.1
end
if player_one_pkmn == 'Charizard' && player_two_pkmn == 'Squirtle'
	p1_dm = 0.9
	p2_dm = 1.1
end
if player_one_pkmn == 'Charizard' && player_two_pkmn == 'Bulbasaur'
	p1_dm = 1.1
	p2_dm = 0.9
end

jugador_uno = {
	"pokemon" 			=> player_one_pkmn,
	"pokemon-type" 		=> "",
	"pokemon-health"	=> 100,
	"damage-modifier"	=> p1_dm,
	"pokemon-lvl"		=> rand(5)+5,
	"current-attack" => ["",0]
}
jugador_dos = {
	"pokemon" 			=> player_two_pkmn,
	"pokemon-type" 		=> "",
	"pokemon-health"	=> 100,
	"damage-modifier"	=> p2_dm,
	"pokemon-lvl"		=> rand(5)+5,
	"current-attack" => ["",0]
}

puts jugador_uno
puts jugador_dos

puts "\nReady to Battle! \n"

attacks = [
	['tackle', 20], ['leer', 5], ['bite', 35], ['special-attack', 50]
]
counter = 0
# until jugador_uno['pokemon-health'] <= 0 || jugador_dos['pokemon-health'] <= 0
loop do
	jugador_uno['current-attack'] = attacks[rand(4)]
	jugador_dos['current-attack'] = attacks[rand(4)]

	jugador_uno['current-attack'][1] = jugador_uno['current-attack'][1] * jugador_uno['pokemon-lvl'] / 10 * jugador_uno['damage-modifier']
	jugador_dos['current-attack'][1] = jugador_dos['current-attack'][1] * jugador_dos['pokemon-lvl'] / 10 * jugador_dos['damage-modifier']

	puts "Lvl. #{jugador_uno['pokemon-lvl']} #{jugador_uno['pokemon']} attack: #{jugador_uno['current-attack'][0].capitalize} did #{jugador_uno['current-attack'][1]} damage."
	puts "Lvl. #{jugador_dos['pokemon-lvl']} #{jugador_dos['pokemon']} attack: #{jugador_dos['current-attack'][0].capitalize} did #{jugador_dos['current-attack'][1]} damage.\n"

	jugador_dos['pokemon-health'] -= jugador_uno['current-attack'][1]
	jugador_uno['pokemon-health'] -= jugador_dos['current-attack'][1]

	puts "\n#{jugador_uno['pokemon']} health: #{jugador_uno['pokemon-health']}"
	puts "#{jugador_dos['pokemon']} health: #{jugador_dos['pokemon-health']}\n"

	counter += 1

	break if jugador_uno['pokemon-health'] <= 0 || jugador_dos['pokemon-health'] <= 0 || counter > 10
end

user = {
	"name" 	=> "",
	"age" 	=> ""
	
}
print "Please enter name: "
user['name'] = gets.chomp
puts "Hello #{user['name']}!"

puts "How old are you #{user['name']}?"
user['age']=gets.chomp.to_i

if user['age'] > 20
	puts "You are allowed to enter the ABC Store!"
	else
		puts "You must go home, you are not old enough to enter"
end
# Study Psychology by Seth Rhodes
def greeting
  puts "Hello Seth!\n\n"
end
greeting

$study_modules = [9,10,11,12,6,7,18,19,20]
$study_modules.sort!

def choose_module
  puts "Please enter a module number to study. \nEnter a to study all modules, \nor 0 to study a random module.\n\n"
  puts "Available Modules are:"
  $study_modules.each {|x| print "#{x} "}
  puts "\n"
  selection = gets.chomp.to_i
  return selection
end

## take input from user to be passed
$choice = choose_module

$choice = $study_modules.sample if $choice == 0

case $choice
when 6 then puts 6
when 7 then puts 7
when 9 then puts 9
when 10 then puts 10
when 11 then puts 11
when 12 then puts 12
when 18 then puts 18
when 19 then puts 19
when 20 then puts 20
else puts "Error"
end

question_bank.each {|key, value| puts key, value, "\n"}

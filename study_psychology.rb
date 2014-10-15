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

question_bank = {}
mod_6_qb = {}
mod_7_qb = {}
mod_9_qb = {}
mod_10_qb = {}
mod_11_qb = {}
mod_12_qb = {}
mod_18_qb = {}
mod_19_qb = {}
mod_20_qb = {}

case $choice
when 6 then question_bank = mod_6_qb
when 7 then question_bank = mod_7_qb
when 9 then question_bank = mod_9_qb
when 10 then question_bank = mod_10_qb
when 11 then question_bank = mod_11_qb
when 12 then question_bank = mod_12_qb
when 18 then question_bank = mod_18_qb
when 19 then question_bank = mod_19_qb
when 20 then question_bank = mod_20_qb
else puts "Error"
end

question_bank.each {|key, value| puts key, value, "\n"}

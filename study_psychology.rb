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

if $choice == 0
  $choice = $study_modules.sample
end

case $choice
when 6
  #puts 6
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 7
  #puts 7
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 9
  #puts 9
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 10
  #puts 10
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 11
  #puts 11
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 12
  #puts 12
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 18
  #puts 18
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 19
  #puts 19
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
when 20
  #puts 20
  question_bank = {
    "What is plasticity" => "The brains ability to develop",
    "Define corpus collosum" => "I can't"
  }
end

question_bank.each {|key, value| puts key, value, "\n"}

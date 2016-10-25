puts "What is the hamster's name ?"
name = gets.chomp

puts "What is the hamster's volume level (1-10)?"
volume = gets.chomp.to_i

puts "What is the fur color ?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption (y/n)?"
adoptable = gets.chomp

puts "How old is the hamster ? (estimate)"
age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_i
end 

puts "Hamster's name : " + name
puts "Hamster's volume : " + volume.to_s
puts "Hamster's color : " + color
if adoptable == "y"
	puts "Hamster is adoptable"
else
    puts "Hamster is not adoptable"
end
if age == nil 
puts "Hamster's age is : nil"
else 
puts "Hamster's age is : "	+ age.to_s
end 
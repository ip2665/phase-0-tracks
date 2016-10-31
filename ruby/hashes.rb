#Print out Hash Keys and Values to the screen
def display(var)
	puts "Client Summary : "
	puts "-----------------"
	puts "1. Client Name : "+var[:name]
	puts "2. Client Age  : "+var[:age].to_s
	puts "3. Children    : "+var[:children].to_s
	puts "4. Decor Theme : "+var[:decor_theme]
	puts "5. Glossy      : "+var[:glossy].to_s
	puts "6. Sandprof    : "+var[:sandprof].to_s
	puts "7. Windows     : "+var[:windows].to_s
	puts "==========================================="
end 


#create hash for data
#Initialize it
client = {
        name: "",
        age: 0,
        children: 0,
        decor_theme: "",
        glossy: false,
        sandprof: false,
        windows: 0
}

#UI to fill up the values
#Convert user inputs to appropriate data type
puts "Hi Designer ! Please enter these fields : "
puts "=========================================="

puts "1. Client Name    : "
client[:name] = gets.chomp

puts "2. Client Age     : "
client[:age] = gets.chomp.to_i

puts "3. Client Children: "
client[:children] = gets.chomp.to_i

puts "4. Decor Theme    : "
client[:decor_theme] = gets.chomp

puts "5. Glossy (y/n)   : "
input = gets.chomp
client[:glossy] = true if input == "y"

puts "6. Sandprof (y/n) : "
input = gets.chomp
client[:sandprof] = true if input == "y"

puts "7. Total Windows  : "
client[:windows] = gets.chomp.to_i

display(client)

#Create One chance user opportunity to update the value of one of the key.
puts "Type Field Number to Update or 'none' to finish : "
input = gets.chomp



if input != "none"
	case 
		when input.to_i == 1
			puts "1. Client Name    : "
			client[:name] = gets.chomp
		when input.to_i == 2
			puts "2. Client Age     : "
			client[:age] = gets.chomp.to_i
		when input.to_i == 3
			puts "3. Client Children: "
			client[:children] = gets.chomp.to_i
		when input.to_i == 4
			puts "4. Decor Theme    : "
			client[:decor_theme] = gets.chomp
		when input.to_i == 5
			puts "5. Glossy (y/n)   : "
			input = gets.chomp
			client[:glossy] = true if input == "y"
		when input.to_i == 6
			puts "6. Sandprof (y/n) : "
			input = gets.chomp
			client[:sandprof] = true if input == "y"
		when input.to_i == 7
			puts "7. Total Windows  : "
			client[:windows] = gets.chomp.to_i
	end
end 	

display(client)
puts "Thank you Designer !"
class Santa
     attr_accessor :age, :ethnicity, :gender


    def initialize(gender,ethnicity)
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolf","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner","Blitzen"]
        @age = 0
    end 
	
	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie_name)
		puts "That was a good "+cookie_name+" !"
	end 
    
#Setter Methods    
    def celebrate_birthday
    	@age += 1
    end 

    def get_mad_at(name="")
       	@reindeer_ranking.delete_if {|x| x == name}
    	@reindeer_ranking << name
    	@reindeer_ranking
    end 

end 	

#Main Code
santas = 0
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many Santas are we going to create: "
santas = gets.chomp
puts "No.  Age    Gender          Ethnicity"
santas.to_i.times do |x|
		# Initialization
		santa = Santa.new(example_genders[rand(6)],example_ethnicities[rand(6)])
		santa.age = rand(141)
		
		# Display the attributes
		puts (x+1).to_s.ljust(3)+" "+santa.age.to_s.rjust(4)+"    "+santa.gender.ljust(15)+" "+santa.ethnicity
end		


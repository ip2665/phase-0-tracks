class Santa
    def initialize(gender,ethnicity)
        puts "Initializing Santa instance..."
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
end 	
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

nick = Santa.new(example_genders[0],example_ethnicities[0])
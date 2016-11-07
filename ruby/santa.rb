class Santa
     attr_accessor :age, :ethnicity


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
    
#Setter Methods    
    def celebrate_birthday
    	@age += 1
    end 

    def get_mad_at(name="")
       	@reindeer_ranking.delete_if {|x| x == name}
    	@reindeer_ranking << name
    	@reindeer_ranking
    end 

    def gender(gender)
    	@gender = gender
    end 

# #Getter Methods
#     def age
#     	@age 
#     end     

#     def ethnicity
#     	@ethnicity
#     end 

end 	
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

nick = Santa.new(example_genders[0],example_ethnicities[0])
nick.get_mad_at("Vixen")

nick.celebrate_birthday
puts nick.age
puts nick.ethnicity
puts nick.get_mad_at("Vixen")
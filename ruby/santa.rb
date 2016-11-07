class Santa
    def initialize
        puts "Initializing Santa instance..."
    end 
	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie_name)
		puts "That was a good "+cookie_name+" !"
	end 
end 	


nick = Santa.new
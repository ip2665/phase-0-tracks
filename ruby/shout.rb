module Shout
	def yell_angrily(words)
		words + "!!!"+" :("
	end 

	def yelling_happily(words)
		words + "!!!"+ " :0)"
	end

end 	

class Sailor
	include Shout
end

class Fighter
	include Shout
end 	

sailor = Sailor.new
fighter = Fighter.new

p "The Sailor shouts "+sailor.yell_angrily("Angry")
p "The Sailor shouts "+sailor.yelling_happily("HApppy")


p "The Fighter shouts "+fighter.yell_angrily("Angry")
p "The Fighter shouts "+fighter.yelling_happily("HApppy")


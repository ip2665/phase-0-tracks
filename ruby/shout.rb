module Shout
	def self.yell_angrily(words)
		words + "!!!"+" :("
	end 

	def self.yelling_happily(words)
		words + "!!!"+ " :0)"
	end

end 	

p Shout.yell_angrily("Angry")
p Shout.yelling_happily("HApppy")
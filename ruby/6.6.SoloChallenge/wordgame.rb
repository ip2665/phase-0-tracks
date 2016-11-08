class Wordgame
	attr_reader :attempt, :phrase, :guesses

	def initialize(phrase)
        @attempt = phrase.length
		@guesses = []
		@phrase  = phrase
	end

	def user_input(x)
		@guesses << x.downcase if !guesses.include?(x.downcase)
		@attempt = @phrase.length - @guesses.length
		@guesses
	end

	def newphrase(phrase)
        @phrase = phrase
        @attempt = phrase.length
        @phrase
	end 

	def match?
        str = ""
        @phrase.chars do |x|
			if @guesses.include?(x.downcase) || x == " "
				str += x
			else
				str += "_"
			end
		end
        str
	end 

	def display
		str = ""
		@guesses.each {|x| str += x + " "}
		str.chop!
	end 
end	


#Main Code

puts "The Words Game"
puts "==============================="
puts "Please enter Word(s) : "
str =  gets.chomp
game = Wordgame.new(str)
puts "Thank You, Word(s) entered is : "+game.phrase
puts "Your Friend will have #{game.attempt} attempts to solve the game. Press Enter to start"
str = gets.chomp
#to clear the screen
25.times {|x| puts ""}

#The action start from here

chr = ""

while true
      break if game.match? == game.phrase
      break if game.attempt == 0
      puts "This is what we have so far : "+ game.match?
      puts "And you have #{game.attempt} attempt left."
      puts "And so far you have entered : "+game.display if game.guesses.length > 0
      puts "Enter a letter or 'quit' to exit : "
      chr = gets.chomp
      break if chr == 'quit'
      game.user_input(chr) if chr.length == 1
end 	

if game.match? == game.phrase
	puts "Congratulation !!! You WIN"
else
    puts "I am So Sorry, Try again next time"
end 
puts "The Answer is "+game.phrase
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
  	puts "Woof " * count
  end 

end

# Main Driver Code

spotty = Puppy.new

spotty.fetch("tennis ball")
spotty.speak(5)
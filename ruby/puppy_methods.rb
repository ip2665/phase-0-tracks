class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
  	puts "Woof " * count
  end 

  def roll_over
    puts "*rolls over*"
  end 

  def dog_years(year)
     return year * 11
  end 

  def tail_wagging
     puts "Wagging its tails happily."
  end
end

# Main Driver Code

spotty = Puppy.new

spotty.fetch("tennis ball")
spotty.speak(5)
spotty.roll_over
puts "2 human years is equal to "+spotty.dog_years(2).to_s+" in dog year."
spotty.tail_wagging
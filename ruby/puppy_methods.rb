class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# Main Driver Code

spotty = Puppy.new

spotty.fetch("tennis ball")
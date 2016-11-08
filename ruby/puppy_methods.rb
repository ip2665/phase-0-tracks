class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
    puts "woof!" * count
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    human_age * 7
  end

  def jump(altitude)
    puts "the dog jumps #{altitude} feet high in the sky."
  end 

end

class Cat
  
  def initialize
    puts "Initializing Cats..."
  end

  def jump(altitude)
    puts "the cat jumps #{altitude} feet high in the sky."
  end

  def purr(r)
    puts "purr" + "r" * r
  end

end

doggie = Puppy.new
doggie.fetch("rubber duckie")
doggie.speak(5)
doggie.roll_over
puts "#{doggie.dog_years(3)} years of dog years is equal 3 years of human age."
doggie.jump(5)
kitty = Cat.new
cats_club = []
50.times do |index|
 puts "Cat number #{index}"
 cats_club << Cat.new
end

cats_club.each_with_index do |kitty, index|
  puts "Cats number #{index}"
  kitty.jump(10)
  kitty.purr(3)
end
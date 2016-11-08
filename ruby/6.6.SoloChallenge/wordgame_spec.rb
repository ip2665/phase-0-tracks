# One user can enter a word (or phrase, if you would like your game to support that),
#  and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. 
# So if the secret word is "unicorn", the user will start out seeing something 
# like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

require_relative "wordgame"


describe Wordgame do
  let(:game) {Wordgame.new("Congrat")}

  it "counts total attempt" do
    expect(game.attempt).to eq 7
  end

  it "saves the attribute" do
  	expect(game.phrase).to eq "Congrat"
  end

  it "build user inputs array" do
  	expect(game.user_input("a")).to eq ["a"]
   	expect(game.user_input("b")).to eq ["a","b"]
   	expect(game.user_input("a")).to eq ["a","b"]
   	expect(game.attempt).to eq 5
  end

  it "matches with the phrase" do
  	expect(game.user_input("a")).to eq ["a"]
  	expect(game.match?).to eq "_____a_"
    game.user_input("o")
    expect(game.match?).to eq "_o___a_"
    game.user_input("C")
    expect(game.match?).to eq "Co___a_"
    expect(game.display).to eq "a o c"
  end 

  it "can handle phrases" do
  	expect(game.newphrase("Congrat Mate")).to eq "Congrat Mate"
  	expect(game.attempt).to eq 12
  	game.user_input("o")
  	game.user_input("C")
  	expect(game.match?).to eq "Co_____ ____"
  	expect(game.attempt).to eq 10
  end   	

end
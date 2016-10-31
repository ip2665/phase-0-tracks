# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".gsub("o","oo")
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

puts "Stop! You’re under arrest!".capitalize
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".insert(0,"the usual")
p " suspects".prepend("the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count("a").to_s
# => 4
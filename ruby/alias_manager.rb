
#Find the next letter based on the str given
def next_letter(str, letter)
	if str.index(letter) == str.length - 1
		return str[0]
	end
	return str[str.index(letter) + 1]
end 

#Find the fake name 
def fakename(str)
consonant = "bcdfghjklmnpqrstvwxyz"
vowel = "aeiou"

#reverse the name
name = str.split.reverse.join(" ")
fake_name = ""
dummy = ""

#iterate through the name letter by letter
name.chars do |x|
	case
	    when vowel.include?(x.downcase) #if the letter is a vowel
             dummy = next_letter(vowel,x.downcase)
             if x == x.downcase #trap for upper/lowercase
             	fake_name += dummy
             else
	            fake_name += dummy.upcase
	         end 
	    when consonant.include?(x.downcase) #if the letter is a consonant
	         dummy = next_letter(consonant,x.downcase) 
	         if x == x.downcase #trap for upper/lowercase
	         	fake_name += dummy
	         else
	            fake_name += dummy.upcase
	         end
	    else 
	    	 fake_name += x #if the letter is non alphabet
    end 
end	
fake_name
end 

#Display the History
def disphistory(hsh)
	puts "The History Stored are :"
	hsh.each do |key,value|
        puts "Alias name for "+key+" is "+value		
	end
end 

history = {}
thename = ""

#UI that keep looping until user type in 'quit'
while true 
	  puts "Welcome Agent !!"
	  puts "================================="
	  puts "Please type in the name, or type 'quit' to finish"
      thename = gets.chomp 
	  break if thename == "quit"
	  puts "The Alias name for "+thename+" is "+fakename(thename)
	  puts "----------------------------------"
	  history[thename] = fakename(thename)
end 

disphistory(history)
puts "**********************************"
puts "Thank you for using the app, Agent!"
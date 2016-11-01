def next_letter(str, letter)
	if str.index(letter) == str.length - 1
		return str[0]
	end
	return str[str.index(letter) + 1]
end 


def fakename(str)

consonant = "bcdfghjklmnpqrstvwxyz"
vowel = "aeiou"

name = str.split.reverse.join(" ")
fake_name = ""
dummy = ""
name.chars do |x|
	case
	    when vowel.include?(x.downcase) 
             dummy = next_letter(vowel,x.downcase)
             if x == x.downcase
             	fake_name += dummy
             else
	            fake_name += dummy.upcase
	         end 
	    when consonant.include?(x.downcase)
	         dummy = next_letter(consonant,x.downcase)
	         if x == x.downcase
	         	fake_name += dummy
	         else
	            fake_name += dummy.upcase
	         end
	    else 
	    	 fake_name += x
    end 
end	
fake_name
end 


puts fakename("Felicia Torres")
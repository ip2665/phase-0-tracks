def encrypt (str)

#read each index from str 
#forward each letter based on the index 

idx = 0 
ltr = ""
while idx <= str.length - 1
   if str[idx] == " "
   	  ltr = ltr + " "
   else
      ltr = ltr + str[idx].next[0]
   end 
   
   idx += 1
end 
return ltr
end 


def decrypt ( str )

keystring = "abcdefghijklmnopqrstuvwxyz"

#read each index from str
#request index location from keystring variable based on the index from str variable
#subtract index with 1 to reverse
#read the index from keystring based on the reverse index

idx = 0 
ltr = ""

while idx <= str.length - 1
      if str[idx] == " "
      	 ltr = ltr + " "
      else 
         ltr = ltr + keystring[keystring.index(str[idx])-1]
      end 
      idx += 1 
    
end 
return ltr

end 

decrypt(encrypt("sword fish"))

req = " "
while  !"de".include?(req)
   puts "Would you like to (d)decrypt or (e)encrypt ? "
   req = gets.chomp
end 

puts "What would be the password ? "
pass = gets.chomp

if req  == "d"
   puts "Result : "+decrypt(pass)
else
   puts "Result : "+encrypt(pass)
end 


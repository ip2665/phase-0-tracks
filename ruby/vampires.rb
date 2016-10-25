def questionaire
   puts "What is your name ?"
   name = gets.chomp
   puts "How old are you ?"
   age = gets.chomp
   puts "What year were you born (yyyy) ?"
   year = gets.chomp
   puts "Should we order some garlic bread for you (y/n)?"
   garlic = gets.chomp
   puts "Would you like to enroll in the company's health insurance (y/n)?"
   insurance = gets.chomp

   allergy = ""
   while allergy != "done"
         puts "Please name any allergies (type 'done' when finish) : "
         allergy = gets.chomp
         if allergy == "sunshine"
      	   puts "Questionaire Result : Probably a vampire."
            puts "============================================================"
            return
         end 
   end 

   x = Time.new.year 
   age_right =  year.to_i == (x - age.to_i) || year.to_i == (x - age.to_i - 1)
   eat_garlic = garlic == "y"
   need_insurance = insurance == "y"

#Condition by boolean true / false
   puts "Name is "+name
   puts "Age is Right ? "+age_right.to_s
   puts "Eat Garlic ? "+eat_garlic.to_s
   puts "Need Insurance ? "+need_insurance.to_s

   if name == "Drake Cula" || name == "Tu Fang"
      result = "Definitely a Vampire."
   elsif age_right && 
	     (eat_garlic || need_insurance)
	   result = "Probably not a vampire."
   elsif !age_right &&
         !eat_garlic && 
         !need_insurance
      result = "Almost certainly a vampire."
   elsif !age_right &&
	      (!eat_garlic || !need_insurance)
	   result = "Probably a vampire."
   else
	   result = "Results inconclusive."
   end 

   puts "Questionaire Result : "+result
   puts "============================================================"
end 

#Main Program

puts "How many employees today ? "
howmany = gets.chomp 
idx = 0
while howmany.to_i > idx 
      idx += 1
      puts "Employee number #{idx}"
      puts "-----------------------"
      questionaire

end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


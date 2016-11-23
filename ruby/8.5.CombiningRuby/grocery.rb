#Grocery List
require "sqlite3"

#ADD  List
	#Access list table and display current list
	#Accept User inputs
	#Add the input as new row and display current list

#EDIT List
	#Accept User inputs based on the list ID
	#Accept User inputs for new values
	#Update the list

#DISPLAY Report
	#Grocery list report

def list_report
end	
	
	#Store report
def stores_report
end

def list_menu
	puts "Grocery List"
	puts "="*30
	puts "1. ADD List"
	puts "2. EDIT List"
	puts "3. List Report"
	puts "4. Stores Report"
	puts "5. Exit"
	puts "="*30
	puts "Enter 1-5 : "
	return gets.chomp!
end 

#Driver Code
#Open grocery.db
db = SQLite3::Database.new("grocery.db")


while true
	choice = list_menu

	case choice
		when "1"
			puts "ADD List"
		when "2"
			puts "EDIT List"
		when "3"
			puts "List Report"
		when "4"
			puts "Stores Report"
		when "5"
			break
		else
			puts "Please enter 1 through 5"
	end	
end 
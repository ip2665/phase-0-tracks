#Grocery List
require "sqlite3"

#Open grocery.db
DB = SQLite3::Database.new("grocery.db")

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
	#reat the list table and display on the screen
def list_report
	list = DB.execute("SELECT * FROM list,stores WHERE list.store_id = stores.id")
	puts "List Report"
	puts "-"*15
	puts "No.".ljust(5)+"Name".ljust(20)+"Amount".ljust(7)+"Store Name".ljust(20)
	puts "="*50
	list.each  {|list_row|
		puts list_row[0].to_s.ljust(5)+list_row[1].ljust(40) }
	puts "="*50
	puts "Press Any Key to return"
	return gets.chomp!
end	
	
	#Store report
	#read the stores table and display on the screen
def stores_report
	stores = DB.execute("SELECT * FROM stores")
	puts "Stores Report"
	puts "-"*15
	puts "No.".ljust(5)+"Name".ljust(40)
	puts "="*40
	stores.each  {|stores_row|
		puts stores_row[0].to_s.ljust(5)+stores_row[1].ljust(40) }
	puts "="*40
	puts "Press Any Key to return"
	return gets.chomp!
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

# #String Delimiters
# 	#ADD List
# 	add_new_row = <<-ADD
# 		INSERT INTO list(name,amount,store_id) VALUES (?,?,?)
# 	ADD
# 	#EDIT List
# 	edit_row = <<-EDIT
# 		UPDATE list SET 
# 	EDIT

#Driver Code



while true
	choice = list_menu

	case choice
		when "1"
			puts "ADD List"
		when "2"
			puts "EDIT List"
		when "3"
			puts "List Report"
			list_report
		when "4"
			puts "Stores Report"
			stores_report
		when "5"
			break
		else
			puts "Please enter 1 through 5"
	end	
end 
puts "Thank You for Using Grocery List"
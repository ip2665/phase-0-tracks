#Grocery List
require "sqlite3"

#Open grocery.db
DB = SQLite3::Database.new("grocery.db")

#ADD  List
	#Access list table and display current list
	#Accept User inputs
	#Add the input as new row and display current list
def add_list
	puts "Please Enter Item Name : "
	item_name = gets.chomp!
	puts "Please Enter the Amount needed : "
	item_amount = gets.chomp!.to_i
	puts "Please Enter the Store ID : "
	store_id = gets.chomp!.to_i
	add_item(item_name,item_amount,store_id)
end 	

def add_item(i_name,i_amount,s_id)
	DB.execute("INSERT INTO list (name,amount,store_id) VALUES (?,?,?)",[i_name,i_amount,s_id])
end	

#DELETE List
	#Accept User inputs based on the list ID
	#Delete ID from the list
def delete_list
	puts "Please Enter Item ID : "
	item_id = gets.chomp!.to_i
	DB.execute("DELETE FROM list WHERE id = ?",[item_id])
end 	

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
		puts list_row[0].to_s.ljust(5)+
			 list_row[1].ljust(20)+
			 list_row[2].to_s.ljust(7)+
			 list_row[3].to_s.ljust(3)+
			 list_row[5].to_s
			  }
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
	puts "2. DELETE List"
	puts "3. List Report"
	puts "4. Stores Report"
	puts "5. Exit"
	puts "="*30
	puts "Enter 1-5 : "
	return gets.chomp!
end 


while true
	choice = list_menu

	case choice
		when "1"
			puts "ADD List"
			list_report
			add_list
			list_report
		when "2"
			puts "DELETE List"
			list_report
			delete_list
			list_report
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
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def createlist(str)
# steps: 
# break the string into an array
    items = str.split
    item_list = {}

	# iterate through array and build hash    
    items.each do |item|

		# iterate through array and build hash
		# set default quantity to 1    	
      	item_list[item] = 1
    end 
    # print the list to the console [the last method that print a list and make it look pretty]
    print_list(item_list)

    # output: the hash
    return item_list
end 	


# Method to add an item to a list
# input: item name and optional quantity
def add_item(item,amount=1,the_lists)
	# steps: accept 2 arguments. Item name and Quantity (with default)
	if the_lists[item] != nil
	   puts "Item is already on the List !"
	   puts "Added amount to the quantity"
	   the_lists[item] += amount
	else
       the_lists[item] = amount
	end 

	print_list(the_lists)
end 
# output: hash with updated list

# Method to remove an item from the list
# input: item name
def remove_item(item,the_lists)
		# steps: search the hash for the key that match the item name
        the_lists.delete_if{|item_name,item_quantity| item_name == item}
		#then delete the element

		print_list(the_lists)
end 		
# output: new updated hash

# Method to update the quantity of an item
# input: item name, the new quantity
def update_item(item,amount,the_lists)

	# steps: search the hash for the key that match the item name

	if the_lists[item] == nil  #If not found, return
	   puts "Item is not on the List, sorry"
	   print_list(the_lists)
	   return
	end

    # update the value of that key with the new quantiy
    the_lists[item] = amount

    print_list(the_lists)
end 	


# output: new updated quantity hash

# Method to print a list and make it look pretty
# input: hash
def print_list(item_list)
	# steps: iterate through each of hash element
	#        print the header
	puts " Grocery List So Far : "
	puts "==================================="
	item_list.each do |item,quantity|
		# display each element key and the value to make it look pretty

		puts item.ljust(20)+quantity.to_s
	end 
end
# output: pretty display.


#driver code
str = "carrots apples cereal pizza"
the_list = createlist(str)

add_item("cereal",3,the_list)

remove_item("cereal",the_list)

update_item("aples", 5,the_list)


add_item("Lemonade",2,the_list)
add_item("Tomatoes",3,the_list)
add_item("Onions",1,the_list)
add_item("Ice Cream",4,the_list)

remove_item("Lemonade",the_list)

update_item("Ice Cream",1,the_list)

print_list(the_list)

# What did you learn about pseudocode from working on this challenge?
# * Pseudocode is like a guideline, blue map for a construction
# What are the tradeoffs of using arrays and hashes for this challenge?
# * Hashes provides key and value pair
# What does a method return?
# * Method returns value
# What kind of things can you pass into methods as arguments?
# * We can pass hash, array, string, number and block.
# How can you pass information between methods?
# * We use arguments to pass information between methods
# What concepts were solidified in this challenge, and what concepts are still confusing?
# * Concept of making "easy to read" code is still in gray area since it is pretty much not objective.


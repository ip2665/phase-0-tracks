# Method to create a list
def createlist
    a = string.split
    hsh = {}
    a.each do |x|
            

    end 
    return hsh
end 	
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # break the string into an array
  # iterate through array and build hash
  # set default quantity to 1
  # print the list to the console [the last method that print a list and make it look pretty]
# output: the hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: accept 2 arguments. Item name and Quantity (with default)
# output: hash

# Method to remove an item from the list
# input: item name
# steps: search the hash for the key that match the item name
#        then delete the element
# output: new updated hash

# Method to update the quantity of an item
# input: item name, the new quantity
# steps: search the hash for the key that match the item name
#  		 update the value of that key with the new quantiy
# output: new updated quantity hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through each of hash element
#        print the header
#        display each element key and the value to make it look pretty
# output: pretty display.
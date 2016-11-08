class TodoList

	def initialize(list)
        @chores_list = list
	end 

	def get_items
		@chores_list
	end 

	def add_item(chore)
		@chores_list << chore
	end 

	def delete_item(chore_item)
		@chores_list.delete_if {|chore| chore == chore_item}
	end 

	def get_item(index)
		@chores_list[index]
	end 
end 	
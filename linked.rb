#A linked list is a linear collection of data elements called nodes that "point" to the next
#node by means of a pointer.
# [NODE(head)] --> [NODE] --> [NODE(tail)]--> nil

class LinkedList


	attr_accessor :head, :tail, :size

	def initialize
		@head = Node.new("head")
		 @tail = Node.new("tail")
		 @size = 0		
	end
		


	def append(value)
		node = Node.new(value)
		current_node = @head
		if @size == 0
			@head.next_node, node.next_node = node, @tail
			@size +=1	
			return
		end
			until current_node.next_node == @tail
				current_node = current_node.next_node
			end
				current_node.next_node = node
				node.next_node = @tail	
	end

	def prepend(value)
		node = Node.new(value)
		if @size == 0		
			@head.next_node, node.next_node = node, @tail			 				
			@size += 1
			return
		end		
		node.next_node, @head.next_node = @head.next_node, node		 
		@size += 1
	end

	def size
		 count = 0
		 current_node = @head
		 until current_node.next_node == nil 
		 count +=1 
		 current_node = current_node.next_node
		 end
		 return count
	end

	def head
		if size != 0
	return	@head.next_node
	
	end
end

	def tail
		until @head.next_node == nil do @head.next_node
			return self
		end

	end

	def at(index)
		index.times do @head.next_node end
			return self

	end

	def pop
		node = @head
		loop do 
			if node.next_node == @tail
				@tail = node
				node.next_node = nil
				
				break
			else
				node = node.next_node
			end
		end
	end



def contains?(data)
		node = @head 
	until node.nil?
		
		return true if node.value  == data
		
		node = node.next_node
	end
	return false
end

def find(data)
	count = 1
		current_node = @head
		until current_node.next_node == nil
				
			if current_node.value == data
			return count
			else
			current_node = current_node.next_node
			count += 1
			end
		end	
		return false
	
end


def to_s
	current_node = @head
		loop do 
			print "(  #{current_node.value}  ) -> "
			current_node = current_node.next_node
			break if current_node == nil
		end	

end

def insert_at(index)
	current_node = @head
		index.times do current_node = current_node.next_node
			@seuraava = current_node.next_node
		end		
		current_node.next_node = Node.new(nil, @seuraava)
end

end

class Node
	attr_accessor :value, :next_node

	def initialize(value= nil, next_node = nil )
		@value = value
		@next_node = next_node		
	end
end


list = LinkedList.new


list.prepend("eka")
list.prepend("vika")
list.prepend("je")
list.append("app")

p list.to_s

#list.contains?("vika")
#p list.contains?("aasi")
p list.find("je")
list.insert_at(2)
p list.to_s
#p list.size
#p list.head
#p list.tail
#p list.at(2)
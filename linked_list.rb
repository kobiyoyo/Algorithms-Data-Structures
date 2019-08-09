class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor:head,:tail
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(number)
     new_node = Node.new(number)
     current = self.head
    if self.head.nil?
      self.head = new_node
      return head
    else
      while(current.next_node)
        current = current.next_node
      end
      current.next_node = new_node
      return current.next_node
    end
  
  
  end

  def get(index)
    current = self.head
    count = 0
    while(current)
      if(count == index)
        return current.value
      end 
      count = count + 1
      current = current.next_node
      
    end
    return nil
  end
  
  def add_at(index,value)
    new_node = Node.new(value)
    count = 0 ;
    prev = 0;
    current = self.head
    if current.nil?
      self.head = new_node
    elsif index == 0
      new_node.next_node = self.head
      current = new_node
    else
      while(count < index )
        prev = current
        current = current.next_node
        count += 1
      end
      new_node.next_node = prev.next_node
      prev.next_node = new_node
    end
  
  end
  def remove(index)
    count = 0
    index = index - 1
    current = self.head
    while count < index
      current = current.next_node
      count += 1
    end
    the_node_after_the_deleted = current.next_node.next_node
    current.next_node = the_node_after_the_deleted
    
  end
end # LinkedList

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
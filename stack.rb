# Start with your code from LinkedList challenge.


class Stack
  attr_accessor :stack,:top
  def initialize
    @stack = []
    @top = self.stack.size
  end
  def push(number)
    
    # self.stack[self.top = self.top + 1]= number
    self.stack << number
  end
  
  def pop
    
    # self.stack[self.top = self.top - 1]
    self.stack.pop
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
# You can use Ruby arrays as stacks. What other common data structures do arrays support?
# "You can use an array as a queue, a linked list, a stack, or a set."

## Stack

puts "\nSTACK OPERATIONS\n\n"
stack = []

stack.push('harper')
stack.push('biden')
stack.push('alaska')

puts stack.pop
puts stack.pop
puts stack.pop

## Set

puts "\nSET OPERATIONS\n\n"
set = []
set << 'apple' << 'orange' << 'apple' << 'pear' << 'apple'
puts set.uniq

## Queue

puts "\nQUEUE OPERATIONS\n\n"
queue = []
queue.push('one')
queue.push('two')
queue.push('three')
puts queue.shift
puts queue.shift
puts queue.shift

## Linked List
# how is one to implememt linked lists using just an array??

class Node
  attr_accessor :data, :next

  def initialize(data, next_node)
    @data = data
    @next = next_node
  end
end

class LinkedList
  def initialize(data)
    @head = Node.new(data, nil)
  end

  def add(val)
    current = @head

    while current.next != nil
      current = current.next
    end

    current.next = Node.new(val, nil)
  end

  def remove(data)
    current = @head
    if current.data == data
      @head = current.next
    else
      while (current.next != nil) && (current.next.data != data)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
  end

  def to_s
    elements = []
    current = @head

    while current.next != nil
      elements << current.data
      current = current.next
    end

    elements << current.data
  end
end

puts
puts 'LINKED LIST'
puts
list = LinkedList.new('alaska')
list.add('harper')
list.add('banana')
list.add('biden')
list.add('jacob')
list.remove('jacob')
list.remove('banana')
puts list.to_s

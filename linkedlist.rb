require 'pry'

class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
    @val = val
    @next = next_node
  end
end

class LinkedList
  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
  end

# current adaptation does not always return deleted node
# deletes 1 matching node
  def delete(val)
    current = @head
    if current.val == val
      @head = current.next
      current
    else
      while current && current.next
        if current.next.val == val
          if current.next.next
            current.next = current.next.next
          else
            current.next = nil
          end
        end
        current = current.next
      end
    end
  end

  def return_list
    current = @head
    elements = [current]
    while current && current.next
      current = current.next
      elements << current
    end
    elements
  end
end

binding.pry

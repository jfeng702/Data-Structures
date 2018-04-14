class Node
  attr_reader :val, :next

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

  def delete(val)
    current = @head
    while current.next != nil
      if current.next.val == val
        if current.next.next
          current.next = current.next.next
        end
      end
      current = current.next
    end
  end

  def return_list
  end
end

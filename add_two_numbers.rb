# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end


# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
   
  l1_reversed = reverse(l1)
  l2_reversed = reverse(l2)
  reverse_sum  = l1_reversed + l2_reversed
  input_to_list = reverse_sum.to_s.split('').reverse
  @list = ListNode.new(input_to_list[0].to_i)
  @tail = @list
  1.upto(input_to_list.size - 1) do |indx|
      @new_node = ListNode.new(input_to_list[indx].to_i)
      @tail.next = @new_node
      @tail = @new_node
  end
  @list
end

def reverse(list_node)
  output = []
  head = list_node.val
  output << head
  next_node = list_node.next
  while next_node
      current = next_node
      output << current.val
      next_node = current.next
  end
  output.reverse.join('').to_i
end

def add(data)
 new_node = ListNode.new(data)
  if !@val
      @val = new_node
      @next = @val
  else
      @next.next = new_node
      @next = new_node
  end
end
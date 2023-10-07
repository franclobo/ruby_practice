#Given the head of a singly linked list, reverse the list, and return the reversed list.



#Example 1:


#Input: head = [1,2,3,4,5]
#Output: [5,4,3,2,1]
#Example 2:


#Input: head = [1,2]
#Output: [2,1]
#Example 3:

#Input: head = []
#Output: []
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil? || head.next.nil?
  prev = nil
  curr = head
  while curr
    temp = curr.next
    curr.next = prev
    prev = curr
    curr = temp
  end
  prev
end

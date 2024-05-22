#Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/

class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

    def __repr__(self):
        return "ListNode(val=" + str(self.val) + ", next={" + str(self.next) + "})"

def list_to_LL(arr):
    if len(arr) < 1:
        return None

    if len(arr) == 1:
        return ListNode(arr[0])
    return ListNode(arr[0], next=list_to_LL(arr[1:]))

OurLinkedList = list_to_LL([1,1,2,3,3])
print(OurLinkedList)



def deleteDuplicates(head) -> ListNode:
    res = head
    while head and head.next:
        if head.val == head.next.val:
            head.next = head.next.next
        else:
            head = head.next   
            print(head.next) 
        print(res)    
    return res

deleteDuplicates(OurLinkedList)






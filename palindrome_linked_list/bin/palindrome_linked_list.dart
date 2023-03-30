/// *******************************************************************************************
/// LeetCode: 234. Palindrome Linked List

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool isPalindrome(ListNode? head) {
    List<int?> listOfNodes = [];

    while (head?.val != null) {
      listOfNodes.add(head?.val);
      head = head?.next;
    }

    bool flag = true;
    final int index = listOfNodes.length ~/ 2;

    print('Sequence of nodes: $listOfNodes');

    for (int i = 0; i < index; i++) {
      print('Compared pairs: ${listOfNodes[i]} - ${listOfNodes[listOfNodes.length - i - 1]}');

      if (listOfNodes[i] != listOfNodes[listOfNodes.length - i - 1]) {
        flag = false;
      }
    }

    return flag;
  }
}

void main() {
  Solution solution = Solution();

  // head = [1, 2, 1, 2]
  ListNode nodeOne = ListNode(1, ListNode(2, ListNode(1, ListNode(2))));
  print('Is palindrome: ${solution.isPalindrome(nodeOne)}');

  print('');

  // head = [1]
  ListNode nodeTwo = ListNode(1);
  print('Is palindrome: ${solution.isPalindrome(nodeTwo)}');

  print('');

  // head = [1, 2, 1]
  ListNode nodeTree = ListNode(1, ListNode(2, ListNode(1)));
  print('Is palindrome: ${solution.isPalindrome(nodeTree)}');

  print('');

  // head = [1, 3, 2, 4, 2, 3, 1]
  ListNode nodeFour = ListNode(1, ListNode(3, ListNode(4, ListNode(2, ListNode(2, ListNode(3, ListNode(1)))))));
  print('Is palindrome: ${solution.isPalindrome(nodeFour)}');
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode sumList = ListNode(0);
    ListNode cursor = sumList;
    int carray = 0;
    while (l1 != null || l2 != null || carray != 0) {
      int l1Val = l1?.val ?? 0;
      int l2Val = l2?.val ?? 0;
      int sumVal = l1Val + l2Val + carray;
      carray = sumVal ~/ 10;

      ListNode sumNode = ListNode(sumVal % 10);
      cursor.next = sumNode;
      cursor = sumNode;

      if (l1 != null) {
        l1 = l1.next;
      }
      if (l2 != null) {
        l2 = l2.next;
      }
    }
    return sumList.next;
  }
}

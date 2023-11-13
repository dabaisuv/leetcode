class Solution {
  bool isPalindrome(int x) {
    //12321
    //1221
    //123
    if (x < 0 || (x > 0 && x % 10 == 0)) {
      return false;
    }
    if (x == 0) {
      return true;
    }

    int reversedX = 0;

    while (x > reversedX) {
      reversedX = reversedX * 10 + x % 10;
      x ~/= 10;
    }
    return x == reversedX || x == reversedX ~/ 10;
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.isPalindrome(121));
}

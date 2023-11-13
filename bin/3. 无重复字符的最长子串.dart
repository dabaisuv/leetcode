import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) {
      return 0;
    }
    int answer = 1;
    int start = 0;
    int end = 1;

    while (end < s.length) {
      if (s.substring(start, end).contains(s[end])) {
        start++;
      } else {
        end++;
      }
      answer = max(end - start, answer);
    }
    return answer;
  }
}

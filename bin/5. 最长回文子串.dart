class Solution {
  String longestPalindrome(String s) {
    String result = '';
    int maxLength = 0;
    List<List<bool>> dp =
        List.generate(s.length, (index) => List.filled(s.length, false));
    for (var i = 0; i < dp.length; i++) {
      dp[i][i] = true;
    }

    for (var i = s.length - 1; i >= 0; i--) {
      for (var j = i; j < s.length; j++) {
        if (s[i] == s[j]) {
          if (i + 1 <= j - 1) {
            if (dp[i + 1][j - 1] == true) {
              dp[i][j] = true;
            }
          } else {
            dp[i][j] = true;
          }

          if (dp[i][j]) {
            if (maxLength < j - i + 1) {
              maxLength = j - i + 1;
              result = s.substring(i, j + 1);
            }
          }
        }
      }
    }

    return result;
  }
}

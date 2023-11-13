class Solution {
  bool isMatch(String s, String p) {
    List<List<bool>> dp = List.generate(
        s.length, (index) => List.filled(p.length, false, growable: true));

    //aahnsa a*hnsa
    for (var i = 0; i < p.length - 1; i++) {}
    return false;
  }
}

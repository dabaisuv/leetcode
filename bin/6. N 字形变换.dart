class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) {
      return s;
    }

    List<List<String>> list =
        List.generate(numRows, (index) => List.empty(growable: true));
    int t = 2 * numRows - 2;
    int row = 0;
    for (var i = 0; i < s.length; i++) {
      list[row].add(s[i]);
      if (((i % t) >= 0) && ((i % t) <= numRows - 2)) {
        row++;
      } else {
        row--;
      }
    }

    return list.map((e) => e.join('')).toList().join();
  }
}

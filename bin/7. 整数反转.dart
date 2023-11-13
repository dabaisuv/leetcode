import 'dart:typed_data';

class Solution {
  int reverse(int x) {
    if (x == 0) {
      return 0;
    }
    var result = x.abs().toString().split('').reversed.join();
    for (var i = 0; i < result.length; i++) {
      if (result[i] == '0') {
        result = result.substring(1);
        i--;
      } else {
        break;
      }
    }
    Int32List int32list = Int32List(1)..[0] = int.parse(result);
    if (int32list[0].toString() == result) {
      return x > 0 ? int32list[0] : -int32list[0];
    } else {
      return 0;
    }
  }
}

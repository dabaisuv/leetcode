class Solution {
  int myAtoi(String s) {
    s = s.trimLeft();
    if (s.isEmpty) {
      return 0;
    }
    bool isNegative = false;
    List<String> numList = [];
    List<String> signList = [];
    for (var i = 0; i < s.length; i++) {
      if ('+-'.contains(s[i])) {
        signList.add(s[i]);
      } else {
        break;
      }
    }

    if (signList.length > 1) {
      return 0;
    }
    s = s.substring(signList.length);
    if (s.isEmpty) {
      return 0;
    }
    signList.where((element) => element == '-').length.isEven
        ? null
        : isNegative = true;

    if (isNumber(s[0])) {
      for (var i = 0; i < s.length; i++) {
        if (isNumber(s[i])) {
          numList.add(s[i]);
        } else {
          break;
        }
      }
    } else {
      return 0;
    }

    return isNegative
        ? overflow((numList..insert(0, '-')).join())
        : overflow(numList.join());
  }

  bool isNumber(String s) {
    return s.codeUnits[0] >= '0'.codeUnits[0] &&
        s.codeUnits[0] <= '9'.codeUnits[0];
  }

  int overflow(String number) {
    BigInt max32Bit = BigInt.from(0x7fffffff);
    BigInt min32Bit = BigInt.from(-0x80000000);
    if (BigInt.parse(number) > max32Bit) {
      return max32Bit.toInt();
    } else if (BigInt.parse(number) < min32Bit) {
      return min32Bit.toInt();
    }

    return int.parse(number);
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.myAtoi('-91283472332'));
  // print('0'.codeUnits[0]);
  // print('9'.codeUnits[0]);
  // print(' '.codeUnits[0]);
  // print(solution.isNumber(' '));
}

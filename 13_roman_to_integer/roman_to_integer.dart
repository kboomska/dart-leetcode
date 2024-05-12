/// *******************************************************************************************
/// LeetCode: 13. Roman to Integer

class Solution {
  int romanToInt(String s) {
    Map<String, int> map = {
      'CM': 900,
      'CD': 400,
      'XC': 90,
      'XL': 40,
      'IX': 9,
      'IV': 4,
      'M': 1000,
      'D': 500,
      'C': 100,
      'L': 50,
      'X': 10,
      'V': 5,
      'I': 1,
    };

    for (var element in map.entries) {
      s = s.replaceAll(element.key, '${element.value} ').trimRight();
    }

    int result =
        s.split(' ').fold(0, (sum, element) => sum + int.parse(element));
    return result;
  }
}

void main() {
  String romanOne = 'III';
  String romanTwo = 'LVIII';
  String romanThree = 'MCMXCIV';

  Solution solution = Solution();

  print(solution.romanToInt(romanOne)); // 3
  print(solution.romanToInt(romanTwo)); // 58
  print(solution.romanToInt(romanThree)); // 1994
}

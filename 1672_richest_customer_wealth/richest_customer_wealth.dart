class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int result = 0;

    for (final account in accounts) {
      final sum = account.reduce((value, element) => value + element);
      if (sum > result) result = sum;
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  void test(List<List<int>> accounts, int expectation) {
    final result = solution.maximumWealth(accounts);

    if (identical(result, expectation)) {
      print('✔️ Test passed for $accounts\n');
    } else {
      print('❌ Test failed for $accounts');
      print('Result is: $result, but expectation is: $expectation\n');
    }
  }

  // Case 1
  test([[1, 2, 3], [3, 2, 1]], 6);

  // Case 2
  test([[1,5],[7,3],[3,5]], 10);

  // Case 3
  test([[2,8,7],[7,1,3],[1,9,5]], 17);
}

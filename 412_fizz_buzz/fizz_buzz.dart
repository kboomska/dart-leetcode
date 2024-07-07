class Solution {
  List<String> fizzBuzz(int n) {
    List<String> result = [];
    for (int i = 1; i <= n; i++) {
      if (i % 15 == 0) {
        result.add('FizzBuzz');
      } else if (i % 5 == 0) {
        result.add('Buzz');
      } else if (i % 3 == 0) {
        result.add('Fizz');
      } else {
        result.add('$i');
      }
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  void test(int n, List<String> expectation) {
    final result = solution.fizzBuzz(n);

    if (result.join() == expectation.join()) {
      print('✔️ Test passed for $n\n');
    } else {
      print('❌ Test failed for $n');
      print('Result is: $result, but expectation is: $expectation\n');
    }
  }

  // Case 1
  test(3, ['1','2','Fizz']);

  // Case 2
  test(5, ['1','2','Fizz','4','Buzz']);

  // Case 3
  test(15, ['1','2','Fizz','4','Buzz','Fizz','7','8','Fizz','Buzz','11','Fizz','13','14','FizzBuzz']);
}

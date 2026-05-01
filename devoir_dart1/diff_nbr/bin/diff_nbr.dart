import 'package:diff_nbr/diff_nbr.dart' as diff_nbr;

void main(List<String> arguments) {
  print(maxDifference([1, 5, 2, 10])); // 8
}
int maxDifference(List<int> numbers) {
  if (numbers.length < 2) return 0;

  int maxDiff = (numbers[1] - numbers[0]).abs();

  for (int i = 1; i < numbers.length; i++) {
    int diff = (numbers[i] - numbers[i - 1]).abs();
    if (diff > maxDiff) {
      maxDiff = diff;
    }
  }

  return maxDiff;
}
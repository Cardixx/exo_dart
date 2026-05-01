import 'package:exo_dart/exo_dart.dart' as exo_dart;

void main(List<String> arguments) {
  print(mostFrequent([1,2,2,3]));
}

int mostFrequent(List<int> numbers) {
  Map<int, int> freq = {};

  for (var n in numbers) {
    freq[n] = (freq[n] ?? 0) + 1;
  }

  int maxCount = 0;
  int result = numbers[0];

  freq.forEach((key, value) {
    if (value > maxCount) {
      maxCount = value;
      result = key;
    }
  });

  return result;
}
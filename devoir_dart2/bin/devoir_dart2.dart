import 'package:devoir_dart2/devoir_dart2.dart' as devoir_dart2;
import 'dart:io';

// void main(List<String> arguments) {
//   stdout.write("Entrez un nombre n : ");
//   int n = int.parse(stdin.readLineSync()!);

//   int a = 0, b = 1;

//   for (int i = 0; i < n; i++) {
//     print(a);
//     int temp = a + b;
//     a = b;
//     b = temp;
//   }
// }


// void main() {
//   stdout.write("Entrez une phrase : ");
//   String phrase = stdin.readLineSync()!.toLowerCase();

//   int count = 0;
//   String voyelles = "aeiouy";

//   for (int i = 0; i < phrase.length; i++) {
//     if (voyelles.contains(phrase[i])) {
//       count++;
//     }
//   }

//   print("Nombre de voyelles : $count");
// }

List<List<int>> findPairs(List<int> nums, int target) {
  Set<int> seen = {};
  List<List<int>> result = [];

  for (int num in nums) {
    int complement = target - num;

    if (seen.contains(complement)) {
      result.add([complement, num]);
    }

    seen.add(num);
  }

  return result;
}

void main() {
  List<int> input = [2, 4, 6, 3, 1, 5];
  int sum = 7;

  List<List<int>> output = findPairs(input, sum);

  print(output);
}
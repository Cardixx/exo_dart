import 'package:chaine_transforme/chaine_transforme.dart' as chaine_transforme;

void main(List<String> arguments) {
  String input = "AbC123!";

  String result = transformString(input);

  print("Entrée : $input");
  print("Résultat : $result");
}


String transformString(String input) {
  List<String> digits = [];

  // Extraire les chiffres
  for (var c in input.split('')) {
    if (RegExp(r'\d').hasMatch(c)) {
      digits.add(c);
    }
  }

  digits = digits.reversed.toList();
  int digitIndex = 0;

  String result = '';

  for (var c in input.split('')) {
    if (RegExp(r'[a-z]').hasMatch(c)) {
      result += c.toUpperCase();
    } 
    else if (RegExp(r'[A-Z]').hasMatch(c)) {
      result += c.toLowerCase();
    } 
    else if (RegExp(r'\d').hasMatch(c)) {
      result += digits[digitIndex++];
    } 
    else {
      result += c; // caractère spécial
    }
  }

  return result;
}
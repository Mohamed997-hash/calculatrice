import 'dart:io';

void main() {
  double numUN, numDEUX;
  String operation;
  while (true) {
    try {
      print("taper le prémier nombre :");
      numUN = double.parse(stdin.readLineSync()!);
      break;
    } on FormatException {
      print("saisie un nombre valide!");
    }
  }
  while (true) {
    try {
      print("taper deuxiéme nombre :");
      numDEUX = double.parse(stdin.readLineSync()!);
      break;
    } on FormatException {
      print("saisie un nombre valide!");
    }
  }
  while (true) {
    print(
        "choisie un operation pour faire les calcul de cet deux nombre: + , - , * , /? ");
    operation = stdin.readLineSync()!;
    if (operation == "+" ||
        operation == "-" ||
        operation == "*" ||
        operation == "/") {
      break;
    } else {
      print("choisises une operation valide. ");
    }
  }
  switch (operation) {
    case "+":
      {
        print("$numUN + $numDEUX = ${numUN + numDEUX}.");
      }
      break;
    case "-":
      {
        print("$numUN - $numDEUX = ${numUN - numDEUX}.");
      }
      break;
    case "*":
      {
        print("$numUN * $numDEUX = ${numUN * numDEUX}.");
      }
      break;
    case "/":
      {
        print("$numUN / $numDEUX = ${numUN / numDEUX}.");
      }
      break;
    default:
      {
        print("error, y'a un erreur.");
      }
      break;
  }
}

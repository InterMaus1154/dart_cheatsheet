import 'dart:io';

void main() {
  String? input;
  while (input != "exit") {
    print("Enter something. Type exit to end.");
    input = stdin.readLineSync();
  }
}

int getIntegerInput() {
  int? value;
  while (true) {
    value = int.tryParse(stdin.readLineSync()!);
    if (value == null) {
      print("Enter a valid integer!");
    } else {
      return value;
    }
  }
}

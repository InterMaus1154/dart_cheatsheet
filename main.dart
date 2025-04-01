import 'dart:io';

void main() {
  print(5 % 2);
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

import 'dart:io';

bool validateInput(String input) {
  for (int i = 0; i < input.length; i++) {
    if (input[i] != '0' && input[i] != '1') {
      return false;
    }
  }
  return true;
}

int binaryToDecimal(String binary) {
  int decimal = 0;
  for (int i = 0; i < binary.length; i++) {
    int digit = int.parse(binary[binary.length - 1 - i]);
    decimal += digit * (1 << i);
  }
  return decimal;
}

void main() {
  print("Enter a binary number: ");
  String? userinp = stdin.readLineSync();
  if (userinp != null) {
    if (validateInput(userinp)) {
      print(binaryToDecimal(userinp));
    } else {
      print("Invalid input. Please enter a binary number.");
    }
  } else {
    print("Error reading input.");
  }
}

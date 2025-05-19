import "utilities/message.dart";

/// Function to run the module
void run() {
  assert(_stringify(2, 3) == "2 3", failureMsg("string_interpolation"));
  print(successMsg("string_interpolation"));
}

String _stringify(final int a, final int b) => "$a $b";

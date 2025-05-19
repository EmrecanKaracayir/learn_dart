import "utilities/message.dart";

String? _a;
String? _b = "b";
String? _c = _a ?? _b;

/// Function to run the module
void run() {
  assert(_b == "b", failureMsg("null_aware_operators"));
  assert(_c == "b", failureMsg("null_aware_operators"));
  _a ??= "a";
  assert(_a == "a", failureMsg("null_aware_operators"));
  print(successMsg("null_aware_operators"));
}

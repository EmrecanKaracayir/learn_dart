import "utilities/message.dart";

/// Function to run the module
void run() {
  const first = "first";
  const second = "second";
  const third = "third";
  final String result = _joinWithComma(first, second, third);
  assert(result == "first, second, third", failureMsg("optional_positional_parameters"));
  print(successMsg("optional_positional_parameters"));
}

String _joinWithComma(
  final String first,
  final String second, [
  final String? third,
  final String? fourth,
  final String? fifth,
]) {
  var result = "$first, $second";
  if (third != null) {
    result += ", $third";
  }
  if (fourth != null) {
    result += ", $fourth";
  }
  if (fifth != null) {
    result += ", $fifth";
  }
  return result;
}

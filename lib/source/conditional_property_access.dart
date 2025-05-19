import "utilities/message.dart";

/// Function to run the module
void run() {
  assert(_toUpperCase(null) == null, failureMsg("conditional_property_access"));
  assert(_toUpperCase("a") == "A", failureMsg("conditional_property_access"));
  print(successMsg("conditional_property_access"));
}

String? _toUpperCase(final String? str) => str?.toUpperCase();

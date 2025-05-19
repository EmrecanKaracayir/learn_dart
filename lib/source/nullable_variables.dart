import "utilities/message.dart";

String? _address;
String? _name = "Emrecan";

/// Function to run the module
void run() {
  assert(_address == null, failureMsg("nullable_variables"));
  assert(_name == "Emrecan", failureMsg("nullable_variables"));
  _address = "Istanbul";
  _name = null;
  assert(_address == "Istanbul", failureMsg("nullable_variables"));
  assert(_name == null, failureMsg("nullable_variables"));
  print(successMsg("nullable_variables"));
}

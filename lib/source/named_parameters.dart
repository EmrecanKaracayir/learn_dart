import "utilities/message.dart";

/// Function to run the module
void run() {
  const fullName = _FullName(name: "John", middleName: "Doe", surname: "Smith");
  final _FullName copiedFullName = fullName.copyWith(name: "Jane");
  assert(copiedFullName.name == "Jane", failureMsg("named_parameters"));
  print(successMsg("named_parameters"));
}

final class _FullName {
  const _FullName({this.name, this.middleName, this.surname});

  final String? name;
  final String? middleName;
  final String? surname;

  _FullName copyWith({final String? name, final String? middleName, final String? surname}) =>
      _FullName(
        name: name ?? this.name,
        middleName: middleName ?? this.middleName,
        surname: surname ?? this.surname,
      );
}

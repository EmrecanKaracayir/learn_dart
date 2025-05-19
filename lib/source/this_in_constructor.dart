import "utilities/message.dart";

/// Function to run the module
void run() {
  const color = _Color.named(red: 255, green: 0, blue: 0);
  const black = _Color.black();
  assert(color.toString() == "Color(255, 0, 0)", failureMsg("this_in_constructor"));
  assert(black.toString() == "Color(0, 0, 0)", failureMsg("this_in_constructor"));
  print(successMsg("this_in_constructor"));
}

final class _Color {
  const _Color(this.red, this.green, this.blue);

  const _Color.black() : this(0, 0, 0);
  const _Color.named({required this.red, required this.green, required this.blue});

  final int red;
  final int green;
  final int blue;

  @override
  String toString() => "Color($red, $green, $blue)";
}

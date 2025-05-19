import "utilities/message.dart";

/// Function to run the module
void run() {
  const black = _Color.black();
  assert(black.toString() == "Color(0, 0, 0)", failureMsg("this_in_constructor"));
  print(successMsg("redirecting_constructors"));
}

final class _Color {
  const _Color(this.red, this.green, this.blue);

  const _Color.black() : this(0, 0, 0);

  final int red;
  final int green;
  final int blue;

  @override
  String toString() => "Color($red, $green, $blue)";
}

import "utilities/message.dart";

/// Function to run the module
void run() {
  const point = _Point(1, 2);
  assert(point.toString() == "Point(1, 2)", failureMsg("const_constructors"));
  print(successMsg("const_constructors"));
}

final class _Point {
  const _Point(this.x, this.y);

  final int x;
  final int y;

  @override
  String toString() => "Point($x, $y)";
}

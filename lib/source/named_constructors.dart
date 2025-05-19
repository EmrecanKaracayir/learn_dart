import "utilities/message.dart";

/// Function to run the module
void run() {
  const rectangle = _Rectangle(width: 10, height: 20);
  const square = _Rectangle.square(10);
  assert(rectangle.area == 200, failureMsg("named_constructors"));
  assert(square.area == 100, failureMsg("named_constructors"));
  print(successMsg("named_constructors"));
}

final class _Rectangle {
  const _Rectangle({required this.width, required this.height});

  const _Rectangle.square(final double size) : this(width: size, height: size);

  final double width;
  final double height;

  double get area => width * height;
}

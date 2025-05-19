import "utilities/message.dart";

/// Function to run the module
void run() {
  final canvas = _Canvas.fromDimensions("My Canvas", width: 100, height: 200);
  assert(canvas is _Canvas2D, failureMsg("factory_constructors"));
  print(successMsg("factory_constructors"));
}

abstract base class _Canvas {
  const _Canvas(this.name);

  factory _Canvas.fromDimensions(
    final String name, {
    required final int width,
    required final int height,
    final int? depth,
  }) {
    if (depth == null) {
      return _Canvas2D(name: name, width: width, height: height);
    } else {
      return _Canvas3D(name: name, width: width, height: height, depth: depth);
    }
  }

  final String name;
}

final class _Canvas2D extends _Canvas {
  const _Canvas2D({required final String name, required this.width, required this.height})
    : super(name);

  final int width;
  final int height;

  @override
  String toString() => "Canvas2D(width: $width, height: $height)";
}

final class _Canvas3D extends _Canvas {
  const _Canvas3D({
    required final String name,
    required this.width,
    required this.height,
    required this.depth,
  }) : super(name);

  final int width;
  final int height;
  final int depth;

  @override
  String toString() => "Canvas3D(width: $width, height: $height)";
}

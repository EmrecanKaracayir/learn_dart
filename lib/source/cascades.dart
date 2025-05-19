import "utilities/message.dart";

/// Function to run the module
void run() {
  final calculator =
      Calculator(x: 10)
        ..add(5)
        ..subtract(3)
        ..multiply(2)
        ..divide(4);
  assert(calculator.result == 6, failureMsg("cascades"));
  print(successMsg("cascades"));
}

/// A simple calculator that supports basic arithmetic operations.
///
/// The calculator starts with an initial value [x] and maintains a running result that can be
/// updated through various operations.
///
/// Example usage:
/// ```dart
/// final calculator = Calculator(x: 10);
/// calculator.add(5);        // result is now 15
/// calculator.subtract(3);   // result is now 12
/// calculator.multiply(2);   // result is now 24
/// calculator.divide(4);     // result is now 6
/// print(calculator.result); // prints 6
/// ```
final class Calculator {
  /// Creates a [Calculator] instance with an initial value [x].
  Calculator({required this.x});

  /// The initial value for the calculator.
  final double x;

  late double _result = x;

  /// The current result of all operations performed.
  double get result => _result;

  /// adds [y] to the current result.
  ///
  /// Returns the updated result.
  double add(final double y) => _result += y;

  /// subtracts [y] from the current result.
  ///
  /// Returns the updated result.
  double divide(final double y) => _result /= y;

  /// multiplies the current result by [y].
  ///
  /// Returns the updated result.
  double multiply(final double y) => _result *= y;

  /// subtracts [y] from the current result.
  ///
  /// Returns the updated result.
  double subtract(final double y) => _result -= y;
}

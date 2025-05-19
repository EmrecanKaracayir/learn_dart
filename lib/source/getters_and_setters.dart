import "utilities/message.dart";

/// Function to run the module
void run() {
  final cart = ShoppingCart()..prices = [10.0, 20.0, 30.0];
  assert(cart.total == 60.0, failureMsg("getters_and_setters"));
  print(successMsg("getters_and_setters"));
}

/// An exception that is thrown when an invalid price is encountered.
final class InvalidPriceException implements Exception {
  /// Constructs an [InvalidPriceException] with the specified [message].
  const InvalidPriceException(this.message);

  /// The error message.
  final String message;

  @override
  String toString() => "InvalidPriceException: $message";
}

/// A simple shopping cart that maintains a list of prices.
final class ShoppingCart {
  final List<double> _prices = [];

  /// List of prices in the shopping cart.
  ///
  /// Returns an unmodifiable view of the prices list.
  ///
  /// Setting [prices] throws an [InvalidPriceException] if any price is negative.
  List<double> get prices => List.unmodifiable(_prices);
  set prices(final List<double> prices) {
    for (final double price in prices) {
      if (price < 0) {
        throw InvalidPriceException("Price cannot be negative: $price");
      }
    }
    _prices
      ..clear()
      ..addAll(prices);
  }

  /// Total price of all items in the shopping cart.
  double get total => _prices.fold(0, (final sum, final price) => sum + price);
}

import "utilities/message.dart";

/// Function to run the module
void run() {
  const order = _Order(1, "Order 1", -10);
  assert(order.price == 0, failureMsg("initializer_lists"));
  print(successMsg("initializer_lists"));
}

final class _Order {
  const _Order(this.id, this.name, final double price) : price = price < 0 ? 0 : price;

  final int id;
  final String name;
  final double price;

  @override
  String toString() => "Order(id: $id, name: $name, price: $price)";
}

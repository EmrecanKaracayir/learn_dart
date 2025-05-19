import "utilities/message.dart";

/// Function to run the module
void run() {
  const counter = Counter.zero();
  assert(counter.count == 0, failureMsg("arrow_syntax"));
  print(successMsg("arrow_syntax"));
}

/// A basic counter.
final class Counter {
  /// Constructs a [Counter] instance with the specified count.
  const Counter({required final int count}) : _count = count;

  /// Constructs a [Counter] instance with a default count of 0.
  const Counter.zero() : _count = 0;

  final int _count;

  /// The current count value.
  int get count => _count;

  /// Returns a new instance of the [Counter] class with the count decremented by 1.
  Counter decrement() => Counter(count: count - 1);

  /// Returns a new instance of the [Counter] class with the count incremented by 1.
  Counter increment() => Counter(count: count + 1);
}

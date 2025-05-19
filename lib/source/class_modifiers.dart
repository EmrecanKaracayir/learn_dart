// ignore_for_file: unused_element => For testing purposes

import "utilities/message.dart";

/// Function to run the module
void run() {
  final _ = _Class(1, 2);
  final _ = _BaseClass(1, 2);
  final _ = _InterfaceClass(1, 2);
  final _ = _FinalClass(1, 2);
  // final _ = _SealedClass(1, 2);
  // final _ = _AbstractClass(1, 2);
  // final _ = _AbstractBaseClass(1, 2);
  // final _ = _AbstractInterfaceClass(1, 2);
  // final _ = _AbstractFinalClass(1, 2);
  final _ = _MixinClass();
  final _ = _BaseMixinClass();
  // final _ = _AbstractMixinClass();
  // final _ = _AbstractBaseMixinClass();
  // final _ = _Mixin();
  // final _ = _BaseMixin();
  print(successMsg("class_modifiers"));
}

/// Class with the `abstract` and `base` modifiers.
///
/// - Construct  : No
/// - Extend     : Yes
/// - Implement  : No
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to create an abstract class that can only be extended within the same
/// library, combining abstraction and restriction.
abstract base class _AbstractBaseClass {
  _AbstractBaseClass(this.a, this.b);

  final int a;
  final int b;

  int get product;
  int get sum => a + b;
}

/// Class with the `abstract`, `base`, and `mixin` modifiers.
///
/// - Construct  : No
/// - Extend     : Yes
/// - Implement  : No
/// - Mix in     : Yes
/// - Exhaustive : No
///
/// Use this modifier(s) to create an abstract mixin class that can be mixed in or extended only
/// within the same library, for maximum restriction.
abstract base mixin class _AbstractBaseMixinClass {
  int add(final int a, final int b) => a + b;
  int multiply(final int a, final int b);
}

/// Class with the `abstract` modifier.
///
/// - Construct  : No
/// - Extend     : Yes
/// - Implement  : Yes
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to define a class that cannot be instantiated directly, but provides a
/// contract or shared logic for subclasses.
abstract class _AbstractClass {
  _AbstractClass(this.a, this.b);

  final int a;
  final int b;

  int get product;
  int get sum => a + b;
}

/// Class with the `abstract` and `final` modifiers.
///
/// - Construct  : No
/// - Extend     : No
/// - Implement  : No
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to define a class that cannot be extended or instantiated, for maximum
/// restriction (rarely used).
abstract final class _AbstractFinalClass {
  _AbstractFinalClass(this.a, this.b);

  final int a;
  final int b;

  int get product;
  int get sum => a + b;
}

/// Class with the `abstract` and `interface` modifiers.
///
/// - Construct  : No
/// - Extend     : No
/// - Implement  : Yes
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to specify an abstract contract that can only be implemented, never
/// extended or instantiated.
abstract interface class _AbstractInterfaceClass {
  _AbstractInterfaceClass(this.a, this.b);

  final int a;
  final int b;

  int get product;
  int get sum;
}

/// Class with the `abstract` and `mixin` modifiers.
///
/// - Construct  : No
/// - Extend     : Yes
/// - Implement  : Yes
/// - Mix in     : Yes
/// - Exhaustive : No
///
/// Use this modifier(s) to provide reusable, abstract behavior that must be implemented, and can be
/// mixed in, extended, or implemented.
abstract mixin class _AbstractMixinClass {
  int add(final int a, final int b) => a + b;
  int multiply(final int a, final int b);
}

/// Class with the `base` modifier.
///
/// - Construct  : Yes
/// - Extend     : Yes
/// - Implement  : No
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to restrict subclassing to within the same library/package, controlling the
/// inheritance hierarchy.
base class _BaseClass {
  _BaseClass(this.a, this.b);

  final int a;
  final int b;

  int get product => a * b;
  int get sum => a + b;
}

/// Mixin with the `base` modifier.
///
/// - Construct  : No
/// - Extend     : No
/// - Implement  : No
/// - Mix in     : Yes
/// - Exhaustive : No
///
/// Use this modifier(s) to provide reusable code as a mixin, but restrict its use to within the
/// same library/package.
base mixin _BaseMixin {
  int add(final int a, final int b) => a + b;
  int multiply(final int a, final int b);
}

/// Class with the `base` and `mixin` modifiers.
///
/// - Construct  : Yes
/// - Extend     : Yes
/// - Implement  : No
/// - Mix in     : Yes
/// - Exhaustive : No
///
/// Use this modifier(s) to create a mixin class that can be mixed in or extended only within the
/// same library, for controlled code reuse.
base mixin class _BaseMixinClass {
  int add(final int a, final int b) => a + b;
  int multiply(final int a, final int b) => a * b;
}

/// Class with no modifiers.
///
/// - Construct  : Yes
/// - Extend     : Yes
/// - Implement  : Yes
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to define general-purpose classes that can be instantiated, extended, and
/// implemented anywhere.
class _Class {
  _Class(this.a, this.b);

  final int a;
  final int b;

  int get product => a * b;
  int get sum => a + b;
}

/// Class with the `final` modifier.
///
/// - Construct  : Yes
/// - Extend     : No
/// - Implement  : No
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to prevent all subclassing and implementation, ensuring the class cannot be
/// extended or implemented.
final class _FinalClass {
  _FinalClass(this.a, this.b);

  final int a;
  final int b;

  int get product => a * b;
  int get sum => a + b;
}

/// Class with the `interface` modifier.
///
/// - Construct  : Yes
/// - Extend     : No
/// - Implement  : Yes
/// - Mix in     : No
/// - Exhaustive : No
///
/// Use this modifier(s) to define a contract that can only be implemented (not extended), enforcing
/// API consistency across implementations.
interface class _InterfaceClass {
  _InterfaceClass(this.a, this.b);

  final int a;
  final int b;

  int get product => a * b;
  int get sum => a + b;
}

/// Mixin with no modifiers.
///
/// - Construct  : No
/// - Extend     : No
/// - Implement  : Yes
/// - Mix in     : Yes
/// - Exhaustive : No
///
/// Use this modifier(s) to share reusable methods/properties across classes without using
/// inheritance, for code reuse.
mixin _Mixin {
  int add(final int a, final int b) => a + b;
  int multiply(final int a, final int b);
}

/// Class with the `mixin` modifier.
///
/// - Construct  : Yes
/// - Extend     : Yes
/// - Implement  : Yes
/// - Mix in     : Yes
/// - Exhaustive : No
///
/// Use this modifier(s) to create a class that can be mixed in, extended, implemented, and
/// instantiated for flexible code reuse.
mixin class _MixinClass {
  int add(final int a, final int b) => a + b;
  int multiply(final int a, final int b) => a * b;
}

/// Class with the `sealed` modifier.
///
/// - Construct  : No
/// - Extend     : No
/// - Implement  : No
/// - Mix in     : No
/// - Exhaustive : Yes
///
/// Use this modifier(s) to create a closed set of subtypes for exhaustive pattern matching, such as
/// for state machines or union types.
sealed class _SealedClass {
  _SealedClass(this.a, this.b);

  final int a;
  final int b;

  int get product => a * b;
  int get sum => a + b;
}

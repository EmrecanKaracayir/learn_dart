import "utilities/message.dart";

/// Function to run the module
void run() {
  final pets = <HousePet>[
    const HousePet(name: "Buddy", type: "dog"),
    const HousePet(name: "Mittens", type: "cat"),
    const HousePet(name: "Tweety", type: "bird"),
    const HousePet(name: "Goldie", type: "fish"),
    const HousePet(name: "Nibbles", type: "hamster"),
    const HousePet(name: "Fluffy", type: "wolf"),
  ];
  final List<String?> sounds = [];
  for (final pet in pets) {
    try {
      sounds.add(pet.makeSound());
    } on UnexpectedPetTypeException {
      sounds.add(null);
    } on Exception {
      sounds.add(null);
    }
  }
  if (sounds.contains(null)) {
    print(successMsg("exceptions"));
  } else {
    print(failureMsg("exceptions"));
  }
}

/// A class representing a house pet.
final class HousePet {
  /// Constructs a [HousePet] with the specified name and type.
  const HousePet({required this.name, required this.type});

  /// The name of the pet.
  final String name;

  /// The type of the pet (e.g., "dog", "cat").
  final String type;

  /// Makes a sound based on the type of pet.
  ///
  /// Throws an [UnexpectedPetTypeException] if the type is not recognized.
  String makeSound() {
    switch (type) {
      case "dog":
        return "$name says Woof!";
      case "cat":
        return "$name says Meow!";
      case "bird":
        return "$name says Tweet!";
      case "fish":
        return "$name says Blub!";
      case "hamster":
      case "ferret":
        return "$name says Squeak!";
      case "snake":
      case "lizard":
        return "$name says Hiss!";
      case "turtle":
        return "$name says Grrr!";
      case "rabbit":
        return "$name says Hop!";
      case "guinea pig":
        return "$name says Wheek!";
      default:
        throw UnexpectedPetTypeException("Unknown animal type: $type");
    }
  }

  @override
  String toString() => "HousePet(name: $name, type: $type)";
}

/// A custom exception for handling unexpected animal types.
final class UnexpectedPetTypeException implements Exception {
  /// Constructs an [UnexpectedPetTypeException] with the specified message.
  const UnexpectedPetTypeException(this.message);

  /// The error message.
  final String message;

  @override
  String toString() => "UnexpectedPetTypeException: $message";
}

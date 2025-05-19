// ignore_for_file: unnecessary_type_check => For testing purposes

import "utilities/message.dart";

final _lettersList = ["a", "b", "c"];
final _mammalsSet = {"cat", "dog", "mouse"};
final _numbersMap = {1: "one", 2: "two", 3: "three"};

/// Function to run the module
void run() {
  assert(_lettersList is List<String>, failureMsg("collection_literals"));
  assert(_mammalsSet is Set<String>, failureMsg("collection_literals"));
  assert(_numbersMap is Map<int, String>, failureMsg("collection_literals"));
  print(successMsg("collection_literals"));
}

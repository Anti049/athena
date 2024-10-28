extension _StringContainsIgnoreCase on String {
  bool containsIgnoreCase(String string) =>
      toLowerCase().contains(string.toLowerCase());
}

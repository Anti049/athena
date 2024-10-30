extension IgnoreCase on String {
  bool containsIgnoreCase(String string) =>
      toLowerCase().contains(string.toLowerCase());

  bool equalsIgnoreCase(String string) => toLowerCase() == string.toLowerCase();
}

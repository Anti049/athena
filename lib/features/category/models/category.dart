class Category {
  Category({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  static const uncategorizedID = 0;

  bool get isSystemCategory => id == uncategorizedID;
}

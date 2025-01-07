enum TriState {
  /// Checkbox off
  ///
  /// ⬜
  ///
  /// This is used when the checkbox is fully unchecked, for example when no items are selected.
  disabled,

  /// Checkbox on
  ///
  /// ✅
  ///
  /// This is used when the checkbox is fully checked, for example when all items are selected.
  enabledTrue,

  /// Checkbox partially on
  ///
  /// ❎
  ///
  /// This is used when the checkbox is partially checked, for example when some but not all items are selected.
  enabledFalse;

  TriState next() => switch (this) {
        TriState.disabled => TriState.enabledTrue,
        TriState.enabledTrue => TriState.enabledFalse,
        TriState.enabledFalse => TriState.disabled,
      };

  bool? toBool() => switch (this) {
        TriState.disabled => false,
        TriState.enabledTrue => true,
        TriState.enabledFalse => null,
      };

  static TriState fromBool(bool? value) => switch (value) {
        false => TriState.disabled,
        true => TriState.enabledTrue,
        null => TriState.enabledFalse,
      };
}

enum DateFormat {
  base('MM/dd/yy'),
  ddMMyy('dd/MM/yy'),
  yyyyMMdd('yyyy-MM-dd'),
  ddMMMyyyy('dd/MMM/yyyy'),
  // ignore: constant_identifier_names
  MMMddyyyy('MMM dd, yyyy');

  const DateFormat(this.format);

  final String format;
}

enum ThemeCategory {
  system('System'),
  custom('Custom'),
  tachiyomi('Tachiyomi'),
  flex('Flex Color Schemes'),
  hsr('Honkai: Star Rail');

  const ThemeCategory(this.name);

  final String name;
}

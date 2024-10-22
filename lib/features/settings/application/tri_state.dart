enum TriState {
  disabled,
  enabledIs,
  enabledNot;

  TriState next() => switch (this) {
        TriState.disabled => TriState.enabledIs,
        TriState.enabledIs => TriState.enabledNot,
        TriState.enabledNot => TriState.disabled,
      };

  bool? toBool() => switch (this) {
        TriState.disabled => false,
        TriState.enabledIs => true,
        TriState.enabledNot => null,
      };

  static TriState fromBool(bool? value) => switch (value) {
        false => TriState.disabled,
        true => TriState.enabledIs,
        null => TriState.enabledNot,
      };
}

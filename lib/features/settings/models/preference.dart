import 'package:athena/features/settings/providers/preference.dart'
    as pref_data;
import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

sealed class Preference {
  Preference({
    required this.title,
    required this.enabled,
  });

  final String title;
  final bool enabled;
}

sealed class PreferenceItem<T> extends Preference {
  PreferenceItem({
    required super.title,
    required super.enabled,
    this.subtitle,
    this.icon,
    this.onValueChanged,
    this.pref,
  });

  final String? subtitle;
  final IconData? icon;
  final Future<bool> Function(T newValue)? onValueChanged;
  final pref_data.Preference<dynamic>? pref;
}

/// A basic [PreferenceItem] that only displays texts.
class TextPreference extends PreferenceItem<String> {
  TextPreference({
    required super.title,
    super.enabled = true,
    super.subtitle,
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
    this.onClick,
    this.trailing,
  });

  final VoidCallback? onClick;
  final Widget? trailing;

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

/// A [PreferenceItem] that provides a two-state toggleable option.
class SwitchPreference extends PreferenceItem<bool> {
  SwitchPreference({
    required super.title,
    super.enabled = true,
    super.subtitle,
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
  });

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

/// A [PreferenceItem] that provides a slider to select an integer number.
class SliderPreference extends PreferenceItem<double> {
  SliderPreference({
    super.title = '',
    super.enabled = true,
    super.subtitle,
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
    this.value,
    this.min = 0,
    required this.max,
    this.step = 1,
  });

  final double? value;
  final double min;
  final double max;
  final double step;

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

/// A [PreferenceItem] that provides a segmented button to select an option.
class SegmentPreference extends PreferenceItem<String> {
  SegmentPreference({
    required super.title,
    super.enabled = true,
    super.subtitle,
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
    this.value,
    required this.options,
  });

  final dynamic value;
  final List<dynamic> options;

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

class Segment {
  Segment({
    required this.value,
    required this.label,
  });

  final dynamic value;
  final String label;
}

/// A [PreferenceItem] that displays a list of entries as a dialog.
class ListPreference<T> extends PreferenceItem<T> {
  ListPreference({
    required super.title,
    super.enabled = true,
    super.subtitle = '%s',
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
    this.subtitleProvider = _defaultSubtitleProvider,
    required this.entries,
  });

  final String? Function<T>(ListPreference c, T value, Map<T, String> entries)
      subtitleProvider;
  final Map<T, String> entries;

  static Future<bool> _defaultOnValueChanged(_) async => true;
  static String? _defaultSubtitleProvider<T>(c, v, e) =>
      c.subtitle != null ? sprintf(c.subtitle!, e[v]) : null;

  void internalSet(Object newValue) => pref?.set(newValue as T);
  Future<bool> internalOnValueChanged(Object newValue) =>
      onValueChanged!(newValue as T);

  String? internalSubtitleProvider(
          Object? value, Map<Object?, String> entries) =>
      subtitleProvider(this, value as T, entries as Map<T, String>);
}

/// [ListPreference] but with no connection to a Preference data.
// class BasicListPreference extends PreferenceItem<String> {
//   BasicListPreference({
//     required super.title,
//     super.enabled = true,
//     super.subtitle = '%s',
//     super.icon,
//     super.onValueChanged = _defaultOnValueChanged,
//     this.subtitleProvider = _defaultSubtitleProvider,
//     required this.entries,
//     required this.value,
//   });

//   final String? Function(
//     BasicListPreference c,
//     String value,
//     Map<String, String> entries,
//   ) subtitleProvider;
//   final Map<String, String> entries;
//   final String value;

//   static Future<bool> _defaultOnValueChanged(_) async => true;
//   static String? _defaultSubtitleProvider(c, v, e) =>
//       c.subtitle != null ? sprintf(c.subtitle!, e[v]) : null;
// }

/// A [PreferenceItem] that displays a list of entries as a dialog.
/// Multiple entries can be selected at the same time.
// class MultiSelectListPreference extends PreferenceItem<Set<String>> {
//   MultiSelectListPreference({
//     required super.title,
//     super.enabled = true,
//     super.subtitle = '%s',
//     super.icon,
//     super.onValueChanged = _defaultOnValueChanged,
//     this.subtitleProvider = _defaultSubtitleProvider,
//     required this.pref,
//     required this.entries,
//   });

//   final String? Function(
//     MultiSelectListPreference c,
//     BuildContext context,
//     Set<String> value,
//     Map<String, String> entries,
//   ) subtitleProvider;
//   final pref_data.Preference<Set<String>> pref;
//   final Map<String, String> entries;

//   static Future<bool> _defaultOnValueChanged(Set<String> _) async => true;
//   static String? _defaultSubtitleProvider(c, context, v, e) {
//     final lang = AppLocalizations.of(context);
//     final elements = v.map((it) => e[it]);
//     final combined = elements.isNotEmpty ? elements.join() : lang.none;
//     return c.subtitle != null ? sprintf(c.subtitle!, combined) : null;
//   }
// }

/// A [PreferenceItem] that shows an EditText in the dialog.
class EditTextPreference extends PreferenceItem<String> {
  EditTextPreference({
    required super.title,
    super.enabled = true,
    super.subtitle = '%s',
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
  });

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

/// A [PreferenceItem] for an individual tracker.
// class TrackerPreference extends PreferenceItem<String> {
//   TrackerPreference({
//     required super.title,
//     super.enabled = true,
//     super.subtitle,
//     super.icon,
//     super.onValueChanged = _defaultOnValueChanged,
//     required this.tracker,
//     required this.login,
//     required this.logout,
//   });

//   final Tracker tracker;
//   final VoidCallback login;
//   final VoidCallback logout;

//   static Future<bool> _defaultOnValueChanged(_) async => true;
// }

class InfoPreference extends PreferenceItem<String> {
  InfoPreference({
    required super.title,
    super.enabled = true,
    super.subtitle,
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
  });

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

class CustomPreference extends PreferenceItem<String> {
  CustomPreference({
    required super.title,
    super.enabled = true,
    super.subtitle,
    super.icon,
    super.onValueChanged = _defaultOnValueChanged,
    super.pref,
    this.content,
  });

  final Widget? content;

  static Future<bool> _defaultOnValueChanged(_) async => true;
}

class PreferenceGroup extends Preference {
  PreferenceGroup({
    required super.title,
    super.enabled = true,
    required this.preferenceItems,
  });

  final List<PreferenceItem> preferenceItems;
}

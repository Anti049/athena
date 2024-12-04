import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/presentation/text_setting.dart';
import 'package:flutter/material.dart';
import 'package:athena/utils/locale.dart';

class CheckboxesSettingWidget extends StatelessWidget {
  const CheckboxesSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    required this.preference,
    required this.choices,
    this.enabled = true,
  });

  final String? title;
  final String? subtitle;
  final Preference<dynamic> preference;
  final List<Choice> choices;
  final bool enabled;

  void addToSet(dynamic value) {
    final Set<dynamic> set = preference.get() ?? {};
    set.add(value);
    preference.set(set);
  }

  void removeFromSet(dynamic value) {
    final Set<dynamic> set = preference.get() ?? {};
    set.remove(value);
    preference.set(set);
  }

  bool valueInSet(dynamic value) {
    final Set<dynamic> set = preference.get() ?? {};
    return set.contains(value);
  }

  @override
  Widget build(BuildContext context) {
    return TextSettingWidget(
      title: title,
      subtitle: subtitle,
      onSettingClick: () {
        // Open dialog with radio buttons
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(title!),
              insetPadding: const EdgeInsets.all(0.0),
              contentPadding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: choices.map((choice) {
                  return CheckboxListTile(
                    title: Text(choice.label),
                    value: valueInSet(choice.value),
                    onChanged: (value) {
                      if (enabled) {
                        if (value == true) {
                          addToSet(choice.value);
                        } else {
                          removeFromSet(choice.value);
                        }
                      }
                    },
                    contentPadding: const EdgeInsets.all(0.0),
                  );
                }).toList(),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(context.locale.action.cancel),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

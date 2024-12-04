import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/presentation/text_setting.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/material.dart';

class RadioSettingWidget extends StatelessWidget {
  const RadioSettingWidget({
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
                  return RadioListTile(
                    title: Text(choice.label),
                    value: choice.value,
                    groupValue: preference.get(),
                    onChanged: (value) {
                      if (enabled) preference.set(value);
                      Navigator.of(context).pop();
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

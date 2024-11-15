import 'package:athena/features/settings/providers/appearance_preferences.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class LanguageSelectionScreen extends ConsumerWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(appearancePreferencesProvider);
    final supportedLocales = AthenaLocalization.supportedLocales;

    final items = supportedLocales.map((locale) {
      // Title is language name in the language itself
      final subtitle = LocaleNames.of(context)!
              .nameOf(
                locale.languageCode,
              )
              ?.toCapitalCase() ??
          locale.languageCode;
      final title = LocaleNamesLocalizationsDelegate
              .nativeLocaleNames[locale.languageCode]
              ?.toCapitalCase() ??
          locale.languageCode;

      return TextPreference(
        title: title,
        subtitle: subtitle,
        onClick: () {
          preferences.appLanguage().set(locale);
        },
        trailing: preferences.appLanguage().get() == locale
            ? Icon(
                Symbols.check,
                color: context.scheme.primary,
              )
            : null,
      );
    }).toList();
    items.sort((a, b) => a.title.compareTo(b.title));

    return PreferenceScaffold(
      title: context.locale.page.settings.appearance.language,
      itemsProvider: () => items,
    );
  }
}

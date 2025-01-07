import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accounts_provider.g.dart';

class AccountsPreferences {
  AccountsPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
AccountsPreferences accountsPreferences(AccountsPreferencesRef ref) =>
    AccountsPreferences(ref.watch(preferencesProvider));

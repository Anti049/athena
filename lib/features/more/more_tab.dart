import 'package:athena/common_widgets/logo_header.dart';
import 'package:athena/features/more/settings/presentation/text_setting.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  static const String routeName = 'more';

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    return Scaffold(
      body: ListView(
        children: [
          const LogoHeader(),
          TextSettingWidget(
            title: context.locale.settings,
            icon: Symbols.settings,
            onSettingClick: () {
              router.push(const SettingsRoute());
            },
          ),
        ],
      ),
    );
  }
}

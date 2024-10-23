import 'package:athena/common_widgets/logo_header.dart';
import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:clipboard/clipboard.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AboutScreen extends ConsumerStatefulWidget {
  const AboutScreen({super.key});

  @override
  ConsumerState<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends ConsumerState<AboutScreen> {
  String appName = '';
  String channel = '';
  String version = '';

  @override
  void initState() {
    PackageInfo.fromPlatform().then(
      (packageInfo) {
        setState(() {
          appName = packageInfo.appName;
          channel = 'Stable';
          version = packageInfo.version;
        });
      },
    );

    super.initState();
  }

  Future<void> openLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final appearance = ref.watch(appearancePreferencesProvider);
    final items = [
      CustomPreference(
        title: 'Logo',
        content: const LogoHeader(),
      ),
      TextPreference(
        title: context.locale.preferenceVersion.header,
        subtitle: context.locale.preferenceVersion.summary(
          channel,
          version,
          DateFormat(appearance.dateFormat().get().format)
              .format(DateTime.now()),
        ),
        onClick: () {
          final fullVersion = context.locale.preferenceVersion.summary(
            channel,
            version,
            DateFormat(appearance.dateFormat().get().format)
                .format(DateTime.now()),
          );
          // Copy version to clipboard
          FlutterClipboard.copy(fullVersion)
              .then((value) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: context.scheme.surfaceContainerHighest,
                      content: Text(
                        'Version copied to clipboard',
                        style: TextStyle(
                          color: context.scheme.onSurface,
                        ),
                      ),
                    ),
                  ));
        },
      ),
      TextPreference(title: context.locale.preferenceCheckForUpdates),
      TextPreference(title: context.locale.preferenceWhatsNew),
      TextPreference(title: context.locale.preferenceLicenses),
      TextPreference(title: context.locale.preferencePrivacyPolicy),
      CustomPreference(
        title: 'Links',
        content: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32.0,
            horizontal: 24.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.globe,
                  color: context.scheme.primary,
                ),
                tooltip: 'Website',
                onPressed: () {
                  openLink('https://nploetz.dev');
                },
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.solidEnvelope,
                  color: context.scheme.primary,
                ),
                tooltip: 'Email',
                onPressed: () {
                  openLink('mailto:nploetz049@gmail.com');
                },
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.discord,
                  color: context.scheme.primary,
                ),
                tooltip: 'Discord',
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bug,
                  color: context.scheme.primary,
                ),
                tooltip: 'Report a bug',
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  color: context.scheme.primary,
                ),
                tooltip: 'GitHub',
                onPressed: () {
                  openLink('https://github.com/Anti049/athena');
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/ko-fi.svg',
                  colorFilter: ColorFilter.mode(
                    context.scheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                tooltip: 'Ko-fi',
                onPressed: () {
                  openLink('https://ko-fi.com/nploetz049');
                },
              ),
            ],
          ),
        ),
      ),
    ];

    return PreferenceScaffold(
      title: context.locale.preferenceCategoryAbout,
      itemsProvider: () => items,
    );
  }
}

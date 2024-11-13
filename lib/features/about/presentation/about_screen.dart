import 'package:athena/common_widgets/logo_header.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/platform.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:change_case/change_case.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
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
          channel = appFlavor?.toCapitalCase() ??
              'Unknown'; // Use appFlavor from flavors.dart
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
    final appVersion = context.locale.settings.about.version.subtitle(
      channel,
      version,
    );
    final items = [
      CustomPreference(
        title: 'Logo',
        content: const LogoHeader(),
      ),
      TextPreference(
        title: context.locale.settings.about.version.title,
        subtitle: appVersion,
        onClick: () {
          // Copy version to clipboard
          FlutterClipboard.copy(appVersion).then(
            (value) {
              if (context.mounted && !context.isMobile) {
                return ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: context.scheme.surfaceContainerHighest,
                    content: Text(
                      'Version copied to clipboard',
                      style: TextStyle(
                        color: context.scheme.onSurface,
                      ),
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
      TextPreference(title: context.locale.settings.about.checkForUpdates),
      TextPreference(title: context.locale.settings.about.whatsNew),
      TextPreference(title: context.locale.settings.about.licenses),
      TextPreference(title: context.locale.settings.about.privacyPolicy),
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
                tooltip: context.locale.settings.about.links.website,
                onPressed: () {
                  openLink('https://nploetz.dev');
                },
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.solidEnvelope,
                  color: context.scheme.primary,
                ),
                tooltip: context.locale.settings.about.links.email,
                onPressed: () {
                  openLink('mailto:nploetz049@gmail.com');
                },
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.discord,
                  color: context.scheme.primary,
                ),
                tooltip: context.locale.settings.about.links.discord,
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bug,
                  color: context.scheme.primary,
                ),
                tooltip: context.locale.settings.about.links.reportBug,
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  color: context.scheme.primary,
                ),
                tooltip: context.locale.settings.about.links.github,
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
                tooltip: context.locale.settings.about.links.kofi,
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
      title: context.locale.page.settings.about,
      itemsProvider: () => items,
    );
  }
}

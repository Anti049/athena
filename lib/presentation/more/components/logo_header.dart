import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: SvgPicture.asset(
            'assets/images/Logo.svg',
            width: 128.0,
            colorFilter: ColorFilter.mode(
              context.scheme.primary,
              BlendMode.srcIn,
            ),
            semanticsLabel: 'Athena Logo',
          ),
        ),
        const Divider(),
      ],
    );
  }
}

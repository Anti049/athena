import 'package:athena/features/settings/providers/base_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class BannerScaffold extends ConsumerWidget {
  BannerScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  final AppBar? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final MenuController _menuController = MenuController();

  List<Widget> _validateActions(List<Widget> actions) {
    // If there are 3 or more actions, group all but the first 2 into a MenuAnchor
    if (actions.length > 2) {
      final overflowActions = actions.sublist(2);
      actions = actions.sublist(0, 2);
      actions.add(
        MenuAnchor(
          controller: _menuController,
          menuChildren: overflowActions.map(
            (e) {
              final action = e as IconButton;
              return MenuItemButton(
                onPressed: action.onPressed,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    action.tooltip ?? 'ITEM REQUIRES TOOLTIP',
                  ), // TODO: Localize this
                ),
              );
            },
          ).toList(),
          child: IconButton(
            onPressed: () {
              _menuController.toggle();
            },
            icon: const Icon(
              Symbols.more_vert,
            ),
          ),
        ),
      );
    }
    return actions;
  }

  List<Widget> _padActions(List<Widget> actions) {
    final paddedActions = _validateActions(actions);
    // If the last actions ISN'T a SizedBox, add a SizedBox to the end
    if (paddedActions.isEmpty || paddedActions.last is! SizedBox) {
      paddedActions.add(const SizedBox(width: 8.0));
    }
    return paddedActions;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Load preferences
    final preferences = ref.watch(basePreferencesProvider);
    final downloadedOnly = preferences.downloadedOnly().get();
    final incognitoMode = preferences.incognitoMode().get();
    bool showingBanner = downloadedOnly || incognitoMode;

    return FocusScope(
      autofocus: true,
      child: Scaffold(
        primary: !showingBanner,
        appBar: appBar?.copyWith(
          title: appBar?.title,
          leading: appBar?.leading,
          actions: _padActions(appBar?.actions ?? []),
          primary: !showingBanner,
          elevation: appBar?.elevation,
          automaticallyImplyLeading: !kIsWeb,
        ),
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}

extension on AppBar? {
  copyWith({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    required bool primary,
    double? elevation,
    bool automaticallyImplyLeading = true,
  }) {
    return AppBar(
      title: title,
      leading: leading,
      actions: actions,
      primary: primary,
      elevation: elevation,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }
}

extension on MenuController {
  void toggle() {
    if (isOpen) {
      close();
    } else {
      open();
    }
  }
}

import 'package:athena/common_widgets/banner_scaffold.dart';
import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/loading_screen.dart';
import 'package:athena/common_widgets/action_frame.dart';
import 'package:athena/features/collection/presentation/library_state.dart';
import 'package:athena/features/library/presentation/components/options/library_options_sheet.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class RefreshIntent extends Intent {
  const RefreshIntent();
}

@RoutePage()
class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab>
    with AutomaticKeepAliveClientMixin<LibraryTab> {
  @override
  bool get wantKeepAlive => true; // Keep the tab alive based on preferences

  bool _searchActive = false;

  IconButton? _getLeading() {
    // If searching, show back arrow
    if (_searchActive) {
      return IconButton(
        icon: const Icon(Symbols.arrow_back),
        onPressed: () {
          setState(() {
            _searchActive = false;
          });
        },
      );
    }
    // If selecting, show close icon
    if (false) {
      return IconButton(
        icon: const Icon(Symbols.close),
        onPressed: () {
          setState(() {});
        },
      );
    }
    return null;
  }

  Widget _getTitle(BuildContext context) {
    // If searching, show search field
    if (_searchActive) {
      return TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: context.locale.library.searchHint,
          border: InputBorder.none,
        ),
        onChanged: (value) {
          // Handle search
        },
      );
    }
    return Text(context.locale.page.library.title);
  }

  List<Widget> _getActions() {
    final libraryPreferences = ref.watch(libraryPreferencesProvider);
    return [
      // Search icon
      IconButton(
        icon: const Icon(Symbols.search),
        onPressed: () {
          setState(() {
            _searchActive = true;
          });
        },
      ),
      // Filters
      IconButton(
        icon: Icon(
          Symbols.filter_list,
          color: libraryPreferences.anyFiltersActive()
              ? context.extended.warning
              : null,
        ),
        onPressed: () {
          showOptions(context);
        },
      ),
      // Actions
      IconButton(
        icon: const Icon(
          Symbols.refresh,
        ),
        onPressed: () {
          showOptions(context);
        },
        tooltip: context.locale.library.menu.updateLibrary,
      ),
      IconButton(
        icon: const Icon(
          Symbols.refresh,
        ),
        onPressed: () {
          showOptions(context);
        },
        tooltip: context.locale.library.menu.updateCategory,
      ),
      IconButton(
        icon: const Icon(
          Symbols.shuffle,
        ),
        onPressed: () {
          showOptions(context);
        },
        tooltip: context.locale.library.menu.randomWork,
      ),
    ];
  }

  void showOptions(BuildContext context) {
    if (context.isCompact) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        clipBehavior: Clip.antiAlias,
        builder: (context) {
          return const LibraryOptionsSheet();
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: context.atLeastLarge ? 640.0 : 480.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const LibraryOptionsSheet(),
                const Divider(height: 0.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 8.0,
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: context.scheme.secondary,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          context.locale.action.reset,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: context.scheme.error,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          context.locale.action.close,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // Get preferences
    final libraryState = ref.watch(libraryStateProvider);
    final libraryNotifier = ref.read(libraryStateProvider.notifier);

    // Handle actions
    refreshAction() {
      libraryNotifier.refresh();
    }

    return ActionFrame(
      onRefresh: refreshAction,
      onEscape: () => setState(() {
        _searchActive = false;
      }),
      child: BannerScaffold(
        appBar: AppBar(
          // Back arrow when search is active
          leading: _getLeading(),
          title: _getTitle(context),
          actions: _getActions(),
        ),
        body: libraryState.when(
          loading: () => const LoadingScreen(),
          error: (error, stackTrace) {
            debugPrintStack(
              label: error.toString(),
              stackTrace: stackTrace,
            );
            return Empty(
              message: error.toString(),
            );
          },
          data: (model) {
            return model.isEmpty
                ? Empty(message: 'No items found')
                : Empty(message: 'Library not implemented');
          },
        ),
      ),
    );
  }
}

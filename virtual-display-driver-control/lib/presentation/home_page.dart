import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'monitor_view.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final items = [
      PaneItem(
        icon: const Icon(FluentIcons.t_v_monitor),
        title: const Text('Monitors'),
        body: const MonitorView(),
      ),
    ];

    final footerItems = [
      PaneItem(
        icon: const Icon(FluentIcons.settings),
        title: const Text('Settings'),
        body: const Center(
          child: Text('Settings'),
        ),
      ),
    ];

    return NavigationView(
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        title: const DragToMoveArea(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('Virtual Display Driver Control'),
          ),
        ),
        actions: SizedBox(
          width: 138,
          height: 50,
          child: WindowCaption(
            brightness: FluentTheme.of(context).brightness,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      pane: NavigationPane(
        selected: _selectedPage,
        displayMode: PaneDisplayMode.compact,
        // toggleable: false,
        items: [
          for (final (i, item) in items.indexed)
            item.copyWith(
              onTap: () => setState(() {
                _selectedPage = i;
              }),
            ),
        ],
        footerItems: [
          for (final (i, item) in footerItems.indexed)
            item.copyWith(
              onTap: () => setState(() {
                _selectedPage = items.length + i;
              }),
            ),
        ],
      ),
    );
  }
}

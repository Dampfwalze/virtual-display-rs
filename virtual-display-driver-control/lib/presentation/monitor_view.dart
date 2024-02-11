import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:virtual_display_driver_control/business/driver.dart';

class MonitorView extends ConsumerWidget {
  const MonitorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final driverState = ref.watch(driverProvider);

    return driverState.when(
      data: (monitors) => ListView.builder(
        itemCount: monitors.length,
        itemBuilder: (context, index) {
          final monitor = monitors[index];
          return ListTile(
            title: Text(monitor.name ?? "Unnamed"),
            subtitle: Text(monitor.modes
                .map((mode) => '${mode.width}x${mode.height}')
                .join(', ')),
            trailing: ToggleSwitch(
              checked: monitor.enabled,
              onChanged: driverState.isLoading
                  ? null
                  : (value) => ref
                      .read(driverProvider.notifier)
                      .toggleMonitor(monitor.id, value)
                      .catchError(
                        (error) => displayInfoBar(
                          context,
                          builder: (context, close) => InfoBar(
                            title: const Text("Feiled to enable monitor"),
                            onClose: close,
                            content: Text(error.toString()),
                            isLong: true,
                            severity: InfoBarSeverity.error,
                          ),
                        ),
                      ),
            ),
          );
        },
      ),
      error: (error, stackTrace) => Center(
        child: InfoBar(
          title: const Text("Failed to connect to driver"),
          isLong: true,
          action: Button(
            child: const Text('Retry'),
            onPressed: () {
              ref.invalidate(driverProvider);
            },
          ),
          content: Text(error.toString()),
          severity: InfoBarSeverity.error,
        ),
      ),
      loading: () => const Center(child: ProgressRing()),
    );
  }
}

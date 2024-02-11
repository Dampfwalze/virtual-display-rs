import 'package:fluent_ui/fluent_ui.dart';

import 'home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: FluentThemeData.dark(),
      home: const HomePage(),
    );
  }
}

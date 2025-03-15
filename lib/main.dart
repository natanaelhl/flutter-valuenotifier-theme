import 'package:flutter/material.dart';
import 'package:value_notifier_theme/presentation/controllers/theme_controller.dart';
import 'package:value_notifier_theme/presentation/pages/my_home_page.dart';

void main() => runApp(const MyApp());

final themeController = ThemeController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: themeController,
        builder: (context, value, child) {
          return MaterialApp(
            title: 'ChangeNotifer Theme',
            theme: value
                ? ThemeData.dark() //
                : ThemeData.light(),
            home: const MyHomePage(),
          );
        });
  }
}

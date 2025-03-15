import 'package:flutter/material.dart';
import 'package:value_notifier_theme/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ChangeNotifierTheme"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text("Press to Change the Theme"),
              ValueListenableBuilder(
                  valueListenable: themeController,
                  builder: (context, value, child) {
                    return Switch(
                        value: value,
                        onChanged: (value) {
                          themeController.toggleTheme();
                        });
                  })
            ])));
  }
}

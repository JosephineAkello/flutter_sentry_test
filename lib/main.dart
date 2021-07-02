import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) => options.dsn = 'https://your sentry.io DSN',
    appRunner: () => runApp(MyApp()),
    );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Flutter Sentry Test'), centerTitle: true),
        ));
  }
}

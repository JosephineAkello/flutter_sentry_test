import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'secretes.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) => options.dsn =
    //add your DSN here
        '$myDsn',
    appRunner: () => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: Scaffold(
            appBar:
                AppBar(title: Text('Flutter Sentry Test'), centerTitle: true),
            body: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                child: Text('I Am  buggy'),
                onPressed: () {
                  throw new StateError('This is a Dart exception error.');
                },
              ),
            )));
  }
}

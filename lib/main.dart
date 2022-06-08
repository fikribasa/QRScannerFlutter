import 'package:flutter/material.dart';
import 'package:qrsimplescanner/screen/landing_screen.dart';
import 'package:qrsimplescanner/theme.dart';

void main() async {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() {
      inDebug = true;
      return true;
    }());
    //https://medium.com/nonstopio/flutter-kill-the-red-screen-of-death-f5e0601d1cdc
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) return ErrorWidget(details.exception);
    // In release builds, show a yellow-on-blue message instead:
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error!',
        style: TextStyle(color: Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    );
  };
  // Here we would normally runApp() the root widget, but to demonstrate
  // the error handling we artificially fail:
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = MainTheme.light();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'QR Simple Scanner',
        home: const LandingScreen());
  }
}

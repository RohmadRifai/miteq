import 'package:flutter/material.dart';
import 'package:miteq/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(13, 59, 105, 1.0),
          colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color.fromRGBO(51, 114, 176, 1.0)),
          scaffoldBackgroundColor: const Color(0xFFF3F5F7)),
      home: const SplashScreen(),
    );
  }
}

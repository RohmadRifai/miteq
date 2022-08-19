import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:miteq/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miteq',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(13, 59, 105, 1.0),
          colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color.fromRGBO(51, 114, 176, 1.0)),
          scaffoldBackgroundColor: const Color(0xFFF3F5F7)),
      scrollBehavior: MyCustomScrollBehavior(),
      home: const SplashScreen(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

import 'package:flutter/material.dart';
import 'package:flutter_kahveci/life/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 184, 99, 127),
          primaryColor: const Color.fromARGB(255, 184, 99, 127),
          appBarTheme: AppBarTheme(
              backgroundColor: const Color.fromARGB(255, 203, 100, 134))),
      home: InputPage(),
    );
  }
}

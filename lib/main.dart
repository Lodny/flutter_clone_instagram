import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.white,
        //   titleTextStyle: TextStyle(color: Colors.black),
        // )
      ),
      home: App(),
    );
  }
}

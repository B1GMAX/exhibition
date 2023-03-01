import 'package:flutter/material.dart';

import 'exhibit_screen/exhibition_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exhibition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExhibitionScreen(),
    );
  }
}

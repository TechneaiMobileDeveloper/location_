import 'package:flutter/material.dart';

import 'location_page.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  add This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LocationPage()
    );
  }
}


import 'package:flutter/material.dart';
import 'route/route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobcar',
      onGenerateRoute: route.controller,
      initialRoute: route.home,
      theme: ThemeData(
        // This is the theme of your application.
        primaryColor: const Color(0xff00adee),
        primarySwatch: Colors.grey,
      ),
    );
  }
}

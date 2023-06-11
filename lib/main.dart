import 'package:flutter/material.dart';
import 'package:taskly/screens/authentication/welcome_page.dart';
import 'package:taskly/screens/home_screens/add_task.dart';
import 'package:taskly/screens/home_screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

import 'package:amt/ui/screens/auth/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextStyle defaultTextStyle = const TextStyle(fontFamily: 'nunito');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
        bodyText2: defaultTextStyle,
      )),
      home: const RootScreen(),
    );
  }
}

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreen(),
    );
  }
}

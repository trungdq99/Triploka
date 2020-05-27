import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:triploka/screens/login_screen.dart';

class TriplokaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

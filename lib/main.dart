import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/homemain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var loginScreen = LoginScreen;
    return MaterialApp(
        title: 'Flutter Login UI',
        debugShowCheckedModeBanner: true,
        home: LoginScreen());
  }
}

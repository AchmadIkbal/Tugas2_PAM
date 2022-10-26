import 'package:flutter/material.dart';
import 'login.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default brightness and colors.

      ),
      home:
      LoginPageFul(),
      // Login(title: 'Login UI',),
        // const Login(title: 'Login UI'),
    );
  }
}
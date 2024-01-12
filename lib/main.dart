import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vikn_test/login/controller/login_cntrl.dart';
import 'package:vikn_test/login/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => LoginController(),)
    ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        home: LoginScreen (),
      ),
    );
  }
}


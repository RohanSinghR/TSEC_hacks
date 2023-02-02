import 'package:credit_chain/loaders/loginLoader.dart';
import 'package:credit_chain/loaders/start_load.dart';
import 'package:credit_chain/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginLoader(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true));
  }
}

import 'package:credit_chain/pages/home/home.dart';
import 'package:credit_chain/pages/login.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true));
  }
}

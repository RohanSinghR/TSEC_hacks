import 'package:credit_chain/loaders/start_load.dart';
import 'package:credit_chain/pages/home/home.dart';
import 'package:credit_chain/pages/home/nft.dart';
import 'package:credit_chain/pages/home/stake.dart';
import 'package:credit_chain/pages/home/will.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        restorationScopeId: "root",
        home: Start_Loader(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true));
  }
}

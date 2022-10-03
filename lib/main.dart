import 'package:flutter/material.dart';
import 'package:billboardfgv/screens/HomePage.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select):const ActivateIntent(),
      },
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.cyan),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}


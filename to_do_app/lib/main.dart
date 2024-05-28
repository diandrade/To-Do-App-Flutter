import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'pages/home_page.dart';


void main() async {

  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.yellow
        )),
    );
  }
}
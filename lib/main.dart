import 'package:nadhifa_project/navigasi.dart';
import 'package:nadhifa_project/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nadhifa Klinik',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.pink[100],
      ),
      home: Scaffold(body: SplashScreen()),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new Navigasi(),
    }
    );

  }
}
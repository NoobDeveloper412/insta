import 'package:flutter/material.dart';
import 'package:instagram/pages/HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Winsta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Colors.black,
          cardColor: Colors.white70,
          accentColor: Colors.black,
          dialogBackgroundColor: Colors.black),
      home: HomePage(),
    );
  }
}

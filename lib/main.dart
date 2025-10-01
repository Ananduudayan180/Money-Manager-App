import 'package:flutter/material.dart';
import 'package:money_manager_app/Screens/home/screen_home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money Manager',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: ScreenHome(),
    );
  }
}

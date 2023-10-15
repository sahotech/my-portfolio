import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/customtheme.dart';
import 'package:sahotech_portfolio/layout/home_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your appl
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sahotech-Portfolio',
      theme: themedData(),
      home: const HomeLayout(),
    );
  }
}

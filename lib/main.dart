import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sahotech_portfolio/customtheme.dart';
import 'package:sahotech_portfolio/layout/home_layout.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

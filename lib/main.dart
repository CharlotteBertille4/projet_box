
import 'package:flutter/material.dart';
import 'package:box/constants/helpers.dart';
import 'package:box/views/box_auth_side.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Box',
      theme: boxAppThemeData,
      debugShowCheckedModeBanner: false,
      locale: const Locale('fr', ''),
      home: const BoxAuthSide(),
    );
  }
}

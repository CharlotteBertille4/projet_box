import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_auth_side.dart';

void main() {
  runApp(const ProjetBox());
}

class ProjetBox extends StatelessWidget {
  const ProjetBox({Key? key}) : super(key: key);
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

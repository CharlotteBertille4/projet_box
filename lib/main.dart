import 'package:flutter/material.dart';
import 'package:projet_box/screens/interface_menu_screen.dart';
import 'package:projet_box/screens/interface_user_screen.dart';

void main() {
  runApp(const ProjetBox());
}

class ProjetBox extends StatelessWidget {
  const ProjetBox({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        'route_interface_user': (BuildContext context) =>
            const InterfaceUserScreen(),
        'route_menu': (BuildContext context) => const InterfaceMenuScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: InterfaceUserScreen(),
    );
  }
}

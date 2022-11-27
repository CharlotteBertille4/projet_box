import 'package:flutter/material.dart';

class InterfaceUserScreen extends StatefulWidget {
  const InterfaceUserScreen({Key? key}) : super(key: key);

  @override
  State<InterfaceUserScreen> createState() => _InterfaceUserScreenState();
}

class _InterfaceUserScreenState extends State<InterfaceUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF07051C),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Padding(
          padding: EdgeInsets.only(left: 90.0),
          child: Text(
            'BOX',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              size: 25.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF07051C),
              Color(0xFF07051C),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [
              0.7,
              1,
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class InterfaceMenuScreen extends StatefulWidget {
  const InterfaceMenuScreen({Key? key}) : super(key: key);

  @override
  State<InterfaceMenuScreen> createState() => _InterfaceMenuScreenState();
}

class _InterfaceMenuScreenState extends State<InterfaceMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final sizeY = MediaQuery.of(context).size.height;
    final sizeX = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Menu',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            // padding: EdgeInsets.only(
            //   //left: 5.0,
            //   right: 50.0,
            //   top: 10.0,
            // ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              'TOUS LES RACCOURCIS',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'Manrope',
                fontStyle: FontStyle.normal,
                color: Color(0xFF818181),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.iconHorloge.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Historique',
                        style: TextStyle(
                          color: Color(0xFF464444),
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.ajoutCaisse.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Créer une caisse',
                        style: TextStyle(
                          color: Color(0xFF464444),
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.annulerCaisse.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Annuler une caisse',
                        style: TextStyle(
                          color: Color(0xFF464444),
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.cadeau.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Cadeaux',
                        style: TextStyle(
                          color: Color(0xFF464444),
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.partage.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Text(
                      'Partager l\'application',
                      style: TextStyle(
                        color: Color(0xFF464444),
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.commercial.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Text(
                      'Compte commercial',
                      style: TextStyle(
                        color: Color(0xFF464444),
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.contatc.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Contactez nous',
                        style: TextStyle(
                          color: Color(0xFF464444),
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                width: sizeX * 1 / 2.5,
                height: sizeY * 1 / 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  border: Border.all(
                    width: 3,
                    style: BorderStyle.solid,
                    color: const Color(0xFFE3E3E3),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Assets.images.aPropos.image(
                        width: 21.34,
                        height: 25.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'A propos',
                        style: TextStyle(
                          color: Color(0xFF464444),
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Assets.images.imageRobinet.image(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FloatingActionButton(
                // onPressed: () {
                //   Navigator.pop(context);
                // },
                onPressed: () {},
                backgroundColor: Colors.orangeAccent,
                child: const Icon(Icons.add),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: ''),
        ],
        backgroundColor: const Color(0xFF07051C),
      ),
    );
  }
}

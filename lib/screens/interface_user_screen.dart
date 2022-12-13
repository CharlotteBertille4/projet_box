import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class InterfaceUserScreen extends StatefulWidget {
  const InterfaceUserScreen({Key? key}) : super(key: key);

  @override
  State<InterfaceUserScreen> createState() => _InterfaceUserScreenState();
}

class _InterfaceUserScreenState extends State<InterfaceUserScreen> {
  @override
  Widget build(BuildContext context) {
    final sizeY = MediaQuery.of(context).size.height;
    final sizeX = MediaQuery.of(context).size.width;
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
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
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
          ),
          Positioned(
            width: sizeX * 1 / 2,
            height: sizeY * 1 / 4,
            top: sizeY * 1 / 25,
            left: sizeX * 1 / 4,
            child: Container(
              width: 273.0,
              height: 273.0,
              decoration: const ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(
                    width: 20.0,
                    color: Color(0xFF505D74),
                  ),
                ),
              ),
              child: Center(
                child: Assets.images.oeuf.image(
                  height: 173.0,
                  width: 143.0,
                ),
              ),
            ),
          ),
          Positioned(
            // top: sizeY * 1 / 5000,
            // left: sizeX * 1 / 2.3,
            left: 200,
            top: 0.2,
            child: Assets.images.ellipse2.image(
              width: 100,
              height: 273,
            ),
          ),
          Positioned(
            top: sizeY * 1 / 3,
            left: sizeX * 1 / 2.8,
            child: Container(
              //color: Colors.blue,
              // width: 50,
              // height: 50,
              child: Row(
                children: [
                  Assets.images.iconHorloge.image(),
                  const Center(
                    child: Text(
                      '20:02:04',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              //color: Colors.green,
              height: sizeY * 1 / 4,
              decoration: const BoxDecoration(
                //color: Color(0xFFF5F5F5),
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //     // height: sizeY * 1 * 6,
                  //     ),
                  Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    height: 60.0,
                    width: 196.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF5F5F5),
                          Color(0xFF07051C),
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        // stops: [
                        //   0.1,
                        //   0.9,
                        // ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        print('charly');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 15.0, left: 45.0),
                        child: Text(
                          '+ DÉPOT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    // ElevatedButton.icon(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.add,
                    //     size: 20.0,
                    //   ),
                    //   label: const Text('DÉPOT'),
                    // ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: sizeY * 1 / 2.2,
            left: sizeX * 1 / 14,
            child: Container(
              height: sizeX * 1 / 3,
              width: sizeY * 1 / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Anniversaire papa',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF0E0C22),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                //color: Colors.green,
                                height: 62.0,
                                width: 101.0,
                                margin: const EdgeInsets.only(left: 2.0),
                                decoration: const BoxDecoration(
                                  //color: Color(0xFFF5F5F5),
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.calendar_today),
                                  ],
                                ),
                              ),
                              SizedBox(width: sizeX * 1 / 8),
                              Container(
                                //color: Colors.green,
                                height: 62.0,
                                width: 101.0,
                                margin: const EdgeInsets.only(left: 2.0),
                                decoration: const BoxDecoration(
                                  color: Colors.orangeAccent,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0xFFF5F5F5),
                                  //     Color(0xFF07051C),
                                  //   ],
                                  //   begin: Alignment.bottomCenter,
                                  //   end: Alignment.topCenter,
                                  //
                                  //   // stops: [
                                  //   //   0.1,
                                  //   //   0.9,
                                  //   // ],
                                  // ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Solde',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Text('0F',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))
                                  ],
                                ),
                              ),
                            ]),
                      ]),
                ],
              ),
            ),
          ),
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

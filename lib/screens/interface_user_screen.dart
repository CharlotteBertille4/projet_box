import 'package:flutter/material.dart';

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
            child: Container(
              //color: Colors.green,
              height: sizeY * 1 / 3,
              decoration: const BoxDecoration(
                //color: Color(0xFFF5F5F5),
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            top: sizeY * 1 / 3,
            left: sizeX * 1 / 10,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Outfit',
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.calendar_today),
                                    ],
                                  ),
                                ),
                                Container(
                                  //color: Colors.green,
                                  height: 62.0,
                                  width: 101.0,
                                  margin: const EdgeInsets.only(left: 2.0),
                                  decoration: const BoxDecoration(
                                    //color: Color(0xFFFDFDFD),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFF5F5F5),
                                        Color(0xFF07051C),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,

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
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                  ]),
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

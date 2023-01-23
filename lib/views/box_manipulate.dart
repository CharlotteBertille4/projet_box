import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';

class BoxManipulate extends StatefulWidget {
  const BoxManipulate({Key? key}) : super(key: key);

  @override
  State<BoxManipulate> createState() => _BoxManipulateState();
}

class _BoxManipulateState extends State<BoxManipulate> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              color: boxGoldenPrimary,
              height: deviceHeight * 0.50,
              // child: Text(deviceHeight.toString()),
            )
          ],
        ),
      ),
    );
  }
}

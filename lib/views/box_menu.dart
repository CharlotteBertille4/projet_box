import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';

class BoxMenu extends StatelessWidget {
  const BoxMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeY = MediaQuery.of(context).size.height;
    final sizeX = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Menu",
          style: makeTextStyleWith(
            textfontSize: 25,
            textfontWeight: FontWeight.w500,
            textColor: boxWhiteness,
          ),
        ),
      ),
      body: Container(
        width: sizeX,
        height: sizeY,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            alignment: const Alignment(1, 1.5),
            scale: 2.15,
            image: AssetImage(
              Assets.images.desktop.path,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Tout les raccourcis",
                style: makeTextStyleWith(
                  fontFamily: 'Manrope',
                  textfontSize: 16,
                  textColor: const Color(0xFF818181),
                ),
              ),
            ),
            Expanded(
              child: GridView.extent(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                maxCrossAxisExtent: 160,
                childAspectRatio: 1.6,
                mainAxisSpacing: 20,
                crossAxisSpacing: 30,
                children: List.generate(
                  menuConfig.length,
                  (index) => InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: boxWhiteness,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: boxdarknessBlack.withOpacity(0.25),
                            blurRadius: 4.0,
                            offset: const Offset(0.0, 4.0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          menuConfig[index]['icon'],
                          Text(
                            menuConfig[index]['label'],
                            style: makeTextStyleWith(
                              fontFamily: 'Inter',
                              textfontSize: 15,
                              textfontWeight: FontWeight.w700,
                              textColor: const Color(0xFF464444),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
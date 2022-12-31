import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';

class BoxTransactionHistory extends StatefulWidget {
  const BoxTransactionHistory({super.key});

  @override
  State<BoxTransactionHistory> createState() => _BoxTransactionHistoryState();
}

class _BoxTransactionHistoryState extends State<BoxTransactionHistory> {
  @override
  Widget build(BuildContext context) {
    final sizeY = MediaQuery.of(context).size.height;
    final sizeX = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Historique",
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
            scale: 1.8,
            image: AssetImage(
              Assets.images.savingCuate.path,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 28, bottom: 15),
              child: Text(
                "Historique Dépot",
                style: makeTextStyleWith(
                  fontFamily: 'Outfit',
                  textfontSize: 25,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, bottom: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  8,
                  (index) => Container(
                    margin: const EdgeInsets.only(right: 16),
                    height: 95,
                    width: 150,
                    decoration: BoxDecoration(
                      color: boxWhiteness,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: const Color(0xFF6D6A6A),
                        width: 2.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "14 Déc 2016 12:20",
                          style: makeTextStyleWith(
                            fontFamily: 'Outfit',
                            textfontSize: 14,
                            textColor: boxHintColor,
                          ),
                        ),
                        Text(
                          "Aniversaire Papa",
                          style: makeTextStyleWith(
                            fontFamily: 'Outfit',
                            textfontSize: 14,
                          ),
                        ),
                        Text(
                          "1500 Fcfa",
                          style: makeTextStyleWith(
                            fontFamily: 'Outfit',
                            textfontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 28, bottom: 15),
              child: Text(
                "Historique Retrait",
                style: makeTextStyleWith(
                  fontFamily: 'Outfit',
                  textfontSize: 25,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, bottom: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  8,
                  (index) => Container(
                    margin: const EdgeInsets.only(right: 16),
                    height: 95,
                    width: 150,
                    decoration: BoxDecoration(
                      color: boxWhiteness,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: boxGoldenPrimary,
                        width: 2.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "14 Déc 2016 12:20",
                          style: makeTextStyleWith(
                            fontFamily: 'Outfit',
                            textfontSize: 14,
                            textColor: boxHintColor,
                          ),
                        ),
                        Text(
                          "Aniversaire Papa",
                          style: makeTextStyleWith(
                            fontFamily: 'Outfit',
                            textfontSize: 14,
                          ),
                        ),
                        Text(
                          "1500 Fcfa",
                          style: makeTextStyleWith(
                            fontFamily: 'Outfit',
                            textfontSize: 20,
                            textColor: boxGoldenPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

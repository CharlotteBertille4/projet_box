import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';

class BoxFrequence extends StatefulWidget {
  const BoxFrequence({Key? key}) : super(key: key);

  @override
  State<BoxFrequence> createState() => _BoxFrequenceState();
}

class _BoxFrequenceState extends State<BoxFrequence> {
  int selectedFrequenceIndex = 0;
  int selectedHourIndex = 0;
  int selectedMinutesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Fréquence d'épargne",
          style: makeTextStyleWith(
            textfontSize: 25,
            textfontWeight: FontWeight.w500,
            textColor: boxWhiteness,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: CupertinoPicker(
                      squeeze: 1.2,
                      itemExtent: 60,
                      diameterRatio: 5.0,
                      selectionOverlay: Container(
                        decoration: const BoxDecoration(
                          border: Border.symmetric(
                            horizontal:
                                BorderSide(color: Color(0xFFDADADA), width: 3),
                          ),
                        ),
                      ),
                      onSelectedItemChanged: (value) => setState(() {
                        selectedFrequenceIndex = value;
                      }),
                      children:
                          List<Widget>.generate(frequences.length, (int index) {
                        return Center(
                          child: Text(
                            frequences[index],
                            style: makeTextStyleWith(
                              textfontSize: 24,
                              textfontWeight: FontWeight.w500,
                              textColor: selectedFrequenceIndex == index
                                  ? boxGoldenPrimary
                                  : boxdarknessBlack,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      looping: true,
                      squeeze: 1.2,
                      itemExtent: 60,
                      diameterRatio: 5.0,
                      selectionOverlay: Container(
                        decoration: const BoxDecoration(
                          border: Border.symmetric(
                            horizontal:
                                BorderSide(color: Color(0xFFDADADA), width: 3),
                          ),
                        ),
                      ),
                      onSelectedItemChanged: (value) => setState(() {
                        selectedHourIndex = value;
                      }),
                      children: List<Widget>.generate(
                        24,
                        (int index) {
                          return Center(
                            child: Text(
                              index.toString().padLeft(2, '0'),
                              style: makeTextStyleWith(
                                textfontSize: 22,
                                textfontWeight: FontWeight.w500,
                                textColor: selectedHourIndex == index
                                    ? boxGoldenPrimary
                                    : boxdarknessBlack,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      looping: true,
                      squeeze: 1.2,
                      itemExtent: 60,
                      diameterRatio: 5.0,
                      selectionOverlay: Container(
                        decoration: const BoxDecoration(
                          border: Border.symmetric(
                            horizontal:
                                BorderSide(color: Color(0xFFDADADA), width: 3),
                          ),
                        ),
                      ),
                      onSelectedItemChanged: (value) => setState(() {
                        selectedMinutesIndex = value;
                      }),
                      children: List<Widget>.generate(
                        60,
                        (int index) {
                          return Center(
                            child: Text(
                              index.toString().padLeft(2, '0'),
                              style: makeTextStyleWith(
                                textfontSize: 22,
                                textfontWeight: FontWeight.w500,
                                textColor: selectedMinutesIndex == index
                                    ? boxGoldenPrimary
                                    : boxdarknessBlack,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 15,
                left: 10,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                color: boxWhiteness,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: boxdarknessBlack.withOpacity(0.25),
                    blurRadius: 4.0,
                    offset: const Offset(0.0, 4.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  days.length,
                  (index) => ListTile(
                    title: Text(
                      days[index],
                      style: makeTextStyleWith(
                        textfontSize: 22,
                        textfontWeight: FontWeight.w400,
                        textColor: boxHintColor,
                      ),
                    ),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (val) {
                        setState(() {
                          // TODO: Implementer l'action pour activer le/les jours
                          // Définit par l'utilisateur
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => {
                      // TODO: IMPLEMENTER UN ACTION POUR LA FREQUENCE
                      // GERER LA CONFIG DE FREQUENCE DEFINI PAR L'UTILISATEUR
                    },
                    child: Text(
                      "Confirmer",
                      style: makeTextStyleWith(
                        textfontSize: 20,
                        textfontWeight: FontWeight.w600,
                        textColor: boxdarknessBlack,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

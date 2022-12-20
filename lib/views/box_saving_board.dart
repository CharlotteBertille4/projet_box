import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_menu.dart';
import 'package:projet_box/widgets/box_saving_progress.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class BoxSavingBoard extends StatefulWidget {
  const BoxSavingBoard({super.key});

  @override
  State<BoxSavingBoard> createState() => _BoxSavingBoardState();
}

class _BoxSavingBoardState extends State<BoxSavingBoard> {
  late ValueNotifier<double> valueNotifier;
  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(45);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: boxRad,
      appBar: AppBar(
        backgroundColor: boxGoldenPrimary,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(CupertinoIcons.search),
          ),
        ],
        title: Text(
          "BOX",
          style: GoogleFonts.outfit(
            fontSize: 30,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      drawer: const BoxMenu(),
      body: Column(
        children: [
          BoxSavingProgress(savingNotifyer: valueNotifier),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: const BoxDecoration(
                color: boxGray,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -50,
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        color: boxWhiteness,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: boxdarknessBlack.withOpacity(0.25),
                            blurRadius: 4.0,
                            offset: const Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Anniversaire Papa'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(width: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                ),
                                onPressed: () {},
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.calendar_month,
                                      color: boxdarknessBlack,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(),
                                  onPressed: () {},
                                  child: Text(
                                    "2 000 000 FCFA",
                                    overflow: TextOverflow.ellipsis,
                                    style: makeTextStyleWith(
                                      textfontSize: 18,
                                      textfontWeight: FontWeight.w600,
                                      textColor: boxdarknessBlack,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    width: 150,
                    left: MediaQuery.of(context).size.width - 280,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        fixedSize: const Size.fromHeight(60),
                      ),
                      onPressed: () => {
                        // CONTROLE ET CREATION D'UNE CAISSE
                        if (createBoxForm.currentState!.validate())
                          {debugPrint("DEPOT SUR UNE CAISSE")}
                      },
                      child: Text(
                        "+ Dépot",
                        style: makeTextStyleWith(
                          textfontSize: 26,
                          textfontWeight: FontWeight.w600,
                          textColor: boxdarknessBlack,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

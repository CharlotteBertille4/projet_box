import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
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
  late double savingTimerValue;
  late String currentDate;
  Timer? savingCounterTimer;

  @override
  void initState() {
    super.initState();
    savingTimerValue = 0.0;
    currentDate = DateFormat('H:m:s').format(DateTime.now()).toString();
    valueNotifier = ValueNotifier(savingTimerValue);
    savingCounterTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int target = const Duration(seconds: 60).inSeconds;
      int unityTarget = const Duration(seconds: 1).inSeconds;

      setState(() {
        currentDate = DateFormat('H:m:s').format(DateTime.now()).toString();
        savingTimerValue += ((unityTarget * 100) / target);

        savingTimerValue > 100.0
            ? savingTimerValue = 100.0
            : valueNotifier = ValueNotifier(savingTimerValue);
      });

      // TERMINER LE TIMER QUAND LE DECOMPTE EST FINI
      if (valueNotifier.value == 100.0) {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    savingCounterTimer!.cancel();
    super.dispose();
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
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              decoration: const BoxDecoration(
                color: boxGray,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(60),
                // ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -50.h,
                    child: Container(
                      height: 130.h,
                      width: MediaQuery.of(context).size.width - 50.w,
                      decoration: BoxDecoration(
                        color: boxWhiteness,
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
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
                          const Text('Salaire'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 20.w),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 10.h,
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
                                    "10 500 FCFA",
                                    overflow: TextOverflow.ellipsis,
                                    style: makeTextStyleWith(
                                      textfontSize: 18.sp,
                                      textfontWeight: FontWeight.w600,
                                      textColor: boxdarknessBlack,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    width: 150.w,
                    left: MediaQuery.of(context).size.width - 280,
                    child: InkWell(
                      onTap: () {
                        // TODO IMPLEMENTER UNE ACTION DE DÉPOT D'ARGENT
                        // VERS LA CAISSE SELECTIONNÉE
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff747474),
                              Color(0xff07051C),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.57),
                              offset: const Offset(0, 4),
                              blurRadius: 9,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "+ DEPOT",
                            style: makeTextStyleWith(
                              textfontSize: 26.sp,
                              textfontWeight: FontWeight.w600,
                              textColor: boxWhiteness,
                            ),
                          ),
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

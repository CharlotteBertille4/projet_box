import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/gen/assets.gen.dart';
import 'package:projet_box/views/box_menu.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class BoxMain extends StatefulWidget {
  const BoxMain({super.key});

  @override
  State<BoxMain> createState() => _BoxMainState();
}

class _BoxMainState extends State<BoxMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BoxMenu(),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                gradient: boxRad,
              ),
              child: Center(
                child: CircularPercentIndicator(
                  radius: 120,
                  lineWidth: 30,
                  percent: 0.04,
                  animation: true,
                  curve: Curves.ease,
                  rotateLinearGradient: true,
                  animateFromLastPercent: true,
                  backgroundColor: const Color(0xFF505D74),
                  circularStrokeCap: CircularStrokeCap.round,
                  linearGradient: savingIndicatorGradient,
                  footer: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      heightFactor: 0.5,
                      child: Text(
                        "20:02:04",
                        // (savingNotifyer.value).toString(),
                        style: GoogleFonts.outfit(
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: boxWhiteness,
                        ),
                      ),
                    ),
                  ),
                  center: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(gradient: eggContainerGradient),
                    child: 2 >= 98
                        ? Assets.images.breakEgg.image(scale: 1.6)
                        : Assets.images.oeuf.image(scale: 1.6),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width - 50.w,
              decoration: BoxDecoration(
                color: boxWhiteness,
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                boxShadow: [
                  BoxShadow(
                    color: boxDarknessBlack.withOpacity(0.25),
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
                              color: boxDarknessBlack,
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
                              textfontSize: 18,
                              textfontWeight: FontWeight.w600,
                              textColor: boxDarknessBlack,
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
            SizedBox(height: 45.h),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
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
                          textfontSize: 26,
                          textfontWeight: FontWeight.w600,
                          textColor: boxWhiteness,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

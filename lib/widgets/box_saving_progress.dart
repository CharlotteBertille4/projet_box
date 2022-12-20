import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';

class BoxSavingProgress extends StatelessWidget {
  const BoxSavingProgress({
    super.key,
    required this.savingNotifyer,
  });

  final ValueNotifier<double> savingNotifyer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        children: [
          CircularPercentIndicator(
            radius: 120,
            lineWidth: 30,
            percent: savingNotifyer.value / 100,
            backgroundColor: const Color(0xFF505D74),
            circularStrokeCap: CircularStrokeCap.round,
            linearGradient: savingIndicatorGradient,
            center: Container(
              width: double.infinity,
              decoration: BoxDecoration(gradient: eggContainerGradient),
              child: Assets.images.oeuf.image(scale: 1.2),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.alarm,
                color: boxGoldenPrimary,
                size: 30,
              ),
              const SizedBox(width: 10),
              Text(
                "20:02:04",
                style: GoogleFonts.outfit(
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  color: boxWhiteness,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

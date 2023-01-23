import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/constants/helpers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.textscaleFactor,
    required this.label,
    required this.haveBackBtn,
    required this.prevFormHandle,
  });

  final double textscaleFactor;
  final String label;
  final bool haveBackBtn;
  final Function prevFormHandle;

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: GoogleFonts.outfit(
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "Bienvenue !",
              style: GoogleFonts.outfit(
                fontSize: 13,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        haveBackBtn
            ? TextButton.icon(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => prevFormHandle(),
                label: Text(
                  "Retour",
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}

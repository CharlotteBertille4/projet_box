import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_auth.dart';
import 'package:projet_box/views/box_register.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

class BoxAuthSide extends StatefulWidget {
  const BoxAuthSide({super.key});

  @override
  State<BoxAuthSide> createState() => _BoxAuthSideState();
}

class _BoxAuthSideState extends State<BoxAuthSide> {
  @override
  void initState() {
    // Ecran uniquement en portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final scalewidth = mockupWidth / deviceWidth;
    final textscaleFactor = deviceWidth / mockupWidth;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 8.h, left: 10.w, right: 10.w),
        child: Column(
          children: [
            Container(
              height: 400.h,
              width: 350.w,
              padding: EdgeInsets.symmetric(
                vertical: 60.h,
                horizontal: 50.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.r)),
                gradient: zenContainerRadient,
              ),
              child: Image.asset(
                'assets/images/zen-box.png',
                scale: scalewidth,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 19.h),
            Text(
              "BOX",
              textScaleFactor: textscaleFactor,
              style: GoogleFonts.outfit(
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 3.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 23.w),
              child: Text(
                "Au coeur de vos economies",
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: boxtranslucideBlack,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BoxAuth(),
                        ),
                      ),
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromHeight(65.h),
                      //backgroundColor: boxGoldenPrimary,
                      padding: EdgeInsets.symmetric(vertical: 19.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          bottomLeft: Radius.circular(15.r),
                        ),
                      ),
                    ),
                    child: Text(
                      "Se connecter",
                      style: GoogleFonts.outfit(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        color: boxDarknessBlack,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BoxRegister(),
                        ),
                      ),
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: boxDarknessBlack,
                      fixedSize: Size.fromHeight(65.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.r),
                          bottomRight: Radius.circular(15.r),
                        ),
                      ),
                      // backgroundColor: boxDarknessBlack,
                      padding: EdgeInsets.symmetric(vertical: 19.h),
                    ),
                    child: Text(
                      "S'inscrire",
                      style: GoogleFonts.outfit(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 3.h,
                    decoration: BoxDecoration(
                      gradient: leftLineBg,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {},
                  child: Text(
                    "Mot de passe oublié ? ",
                    textScaleFactor: textscaleFactor,
                    style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: boxtranslucideBlack,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 3.h,
                    decoration: BoxDecoration(
                      gradient: rightLineBg,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

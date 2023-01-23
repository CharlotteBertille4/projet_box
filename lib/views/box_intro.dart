import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';
import 'package:projet_box/views/box_auth_side.dart';
import 'package:projet_box/widgets/on_board_content.dart';
import 'package:projet_box/widgets/step_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class BoxIntro extends StatefulWidget {
  const BoxIntro({super.key});

  @override
  State<BoxIntro> createState() => _BoxIntroState();
}

class _BoxIntroState extends State<BoxIntro> {
  int pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: pageIndex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: boxRad,
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {
                    if (pageIndex > 0)
                      {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        ),
                      }
                  },
                  child: Text(
                    "Retour",
                    style: GoogleFonts.dosis(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: boxWhiteness,
                    ),
                  ),
                ),
                SizedBox(width: 28.w),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (value) => setState(() {
                pageIndex = value;
              }),
              itemCount: boxOnboardContentData.length,
              controller: _pageController,
              itemBuilder: (context, index) => BoxOnboardContent(
                image: boxOnboardContentData[index].image,
                description: boxOnboardContentData[index].description,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              child: Row(
                children: [
                  ...List.generate(
                    boxOnboardContentData.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: StepIndicator(
                        customColor: boxWhiteness,
                        isActive: index == pageIndex,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 62,
                    width: 62,
                    child: ElevatedButton(
                      onPressed: () => {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        ),
                        if (pageIndex >= boxOnboardContentData.length - 1)
                          {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BoxAuthSide(),
                              ),
                            ),
                          }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: boxWhiteness,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_auth_side.dart';
import 'package:projet_box/widgets/on_board_content.dart';
import 'package:projet_box/widgets/step_indicator.dart';

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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: boxRad,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                        style: backTextFont,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
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
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    ...List.generate(
                      boxOnboardContentData.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: StepIndicator(
                          height: 4,
                          width: 12,
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
            ],
          ),
        ),
      ),
    );
  }
}

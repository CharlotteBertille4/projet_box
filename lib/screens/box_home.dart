import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_saving_board.dart';
import 'package:projet_box/views/box_user_profile.dart';
import 'package:projet_box/widgets/box_custombottombar.dart';
import 'package:projet_box/widgets/box_customfloatingbtn.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class BoxHome extends StatefulWidget {
  const BoxHome({super.key});

  @override
  State<BoxHome> createState() => _BoxHomeState();
}

class _BoxHomeState extends State<BoxHome> {
  late ValueNotifier<double> valueNotifier;
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

  void displayPageAt(int index) {
    setState(() {
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return ScaffoldGradientBackground(
      gradient: boxRad,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          keyboardIsOpened ? null : const CustomFloatingActionBtn(),
      bottomNavigationBar: CustomBottombar(
        pageIndex: pageIndex,
        switchPage: displayPageAt,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (value) => setState(() {
          pageIndex = value;
        }),
        children: const [
          BoxSavingBoard(),
          BoxUserProfile(),
        ],
      ),
    );
  }
}

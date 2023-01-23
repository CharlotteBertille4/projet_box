import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_affiliate_confidentiality.dart';
import 'package:projet_box/views/box_number_job.dart';
import 'package:projet_box/views/box_sex_birthday.dart';
import 'package:projet_box/views/box_user_name_surname.dart';
import 'package:projet_box/views/box_user_password.dart';
import 'package:projet_box/widgets/box_custom_bar.dart';
import 'package:projet_box/widgets/box_oval_motif_paint.dart';

class BoxRegister extends StatefulWidget {
  const BoxRegister({super.key});

  @override
  State<BoxRegister> createState() => _BoxRegisterState();
}

class _BoxRegisterState extends State<BoxRegister> {
  //
  GlobalKey<FormState> basicFormKey = GlobalKey<FormState>();

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

  void displayNextForm() {
    setState(() {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease,
      );
    });
  }

  void displayPrevForm() {
    setState(() {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //  final deviceWith = MediaQuery.of(context).size.width;
    // // final scalewidth = mockupWidth / deviceWith;
    // final textscaleFactor = deviceWith / mockupWidth;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromRadius(100.h),
      //   child: CustomAppBar(
      //     textscaleFactor: textscaleFactor,
      //     prevFormHandle: displayPrevForm,
      //     haveBackBtn: (pageIndex > 0),
      //     label: "Inscription",
      //   ),
      // ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (value) => setState(() {
          pageIndex = value;
        }),
        children: [
          BoxUserNameSurname(
            currentPageIndex: pageIndex,
            nextFormHandler: displayNextForm,
          ),
          BoxNumberJob(
            currentPageIndex: pageIndex,
            nextFormHandler: displayNextForm,
          ),
          BoxSexBirthday(
            currentPageIndex: pageIndex,
            nextFormHandler: displayNextForm,
          ),
          BoxUserPassword(
            currentPageIndex: pageIndex,
            nextFormHandler: displayNextForm,
          ),
          BoxAffilateConfidentiality(
            currentPageIndex: pageIndex,
            nextFormHandler: displayNextForm,
          ),
        ],
      ),
    );
  }
}

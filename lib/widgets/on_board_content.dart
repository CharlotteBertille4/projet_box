import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxOnboardContent extends StatelessWidget {
  const BoxOnboardContent({
    super.key,
    required this.image,
    required this.description,
  });

  final String image, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          image,
          height: 293.h,
          width: 250.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            description,
            textAlign: TextAlign.center,
            maxLines: 3,
            style: boxOnBoringThemeFont,
          ),
        ),
      ],
    );
  }
}

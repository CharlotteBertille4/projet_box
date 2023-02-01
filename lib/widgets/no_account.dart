import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_auth.dart';
import 'package:projet_box/views/box_register.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    super.key,
    required this.textscaleFactor,
    required this.firstText,
    required this.secondText,
    required this.isLogin,
  });

  final double textscaleFactor;
  final String firstText, secondText;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          textScaleFactor: textscaleFactor,
          style: makeTextStyleWith(
            textfontSize: 13,
            textColor: boxHintColor,
            textfontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(width: 2.w),
        TextButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    isLogin ? const BoxRegister() : const BoxAuth(),
              ),
            ),
          },
          child: Text(
            secondText,
            textScaleFactor: textscaleFactor,
            style: makeTextStyleWith(
              textfontSize: 13,
              textfontWeight: FontWeight.w700,
              textColor: boxDarknessBlack,
            ),
          ),
        )
      ],
    );
  }
}

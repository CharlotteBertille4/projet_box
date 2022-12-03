import 'package:box/constants/helpers.dart';
import 'package:box/views/box_login.dart';
import 'package:box/views/box_register.dart';
import 'package:flutter/material.dart';

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
        const SizedBox(width: 2),
        TextButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    isLogin ? const BoxRegister() : const BoxConnexion(),
              ),
            ),
          },
          child: Text(
            secondText,
            textScaleFactor: textscaleFactor,
            style: makeTextStyleWith(
              textfontSize: 13,
              textfontWeight: FontWeight.w700,
              textColor: boxdarknessBlack,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';
import 'package:projet_box/widgets/box_custom_bar.dart';
import 'package:projet_box/widgets/box_oval_motif_paint.dart';
import 'package:projet_box/widgets/dot_indicator.dart';
import 'package:projet_box/widgets/no_account.dart';

class BoxUserPassword extends StatelessWidget {
  const BoxUserPassword({
    super.key,
    required this.currentPageIndex,
    required this.nextFormHandler,
  });

  final int currentPageIndex;
  final Function nextFormHandler;

  @override
  Widget build(BuildContext context) {
    final deviceWith = MediaQuery.of(context).size.width;
    final textscaleFactor = deviceWith / mockupWidth;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(left: 26, right: 26, top: 45),
      child: CustomPaint(
        painter: BoxOvalMotifPaint(),
        child: Column(
          children: [
            CustomAppBar(
              textscaleFactor: 1,
              label: 'Inscription',
              haveBackBtn: true,
              prevFormHandle: () {},
            ),
            Assets.images.boxLogoName.image(height: 150.h, scale: 2.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  steps,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: DotIndicator(
                      isActive: index == currentPageIndex,
                      height: 10,
                      width: 29,
                      customColor: boxdarknessBlack,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Form(
              key: form_4,
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: formConfig["password"]["controller"],
                    validator: formConfig["password"]["rule"],
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: makeTextStyleWith(
                      textfontSize: 15.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Mot de passe",
                    ),
                  ),
                  SizedBox(height: 15.h),
                  TextFormField(
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: formConfig["confirmPassword"]["controller"],
                    validator: (v) {
                      if (v != formConfig["password"]["controller"].text) {
                        return "Mot de passe non identique";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    style: makeTextStyleWith(
                      textfontSize: 15.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Confirmer le mot de passe",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    // Une interface d'OTP avant le Home
                    // Anonce de l'ID de l'utilisateur
                    onPressed: () {
                      nextFormHandler();
                    },
                    child: Text(
                      "Suivant",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h),
            const NoAccount(
              isLogin: false,
              textscaleFactor: 1,
              firstText: "Déja un compte ?",
              secondText: "Connectez-vous",
            ),
          ],
        ),
      ),
    );
  }
}

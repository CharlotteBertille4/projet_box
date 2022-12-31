import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/screens/box_home.dart';
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
      padding: const EdgeInsets.only(top: 26, left: 22, right: 22),
      child: Column(
        children: [
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
          const SizedBox(height: 25),
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
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Mot de passe",
                  ),
                ),
                const SizedBox(height: 15),
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
                    textfontSize: 15,
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
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  // Une interface d'OTP avant le home
                  // Anonce de l'ID de l'utilisateur
                  onPressed: () {
                    nextFormHandler();
                  },
                  child: Text(
                    "Suivant",
                    textScaleFactor: textscaleFactor,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          NoAccount(
            isLogin: false,
            textscaleFactor: textscaleFactor,
            firstText: "Déja un compte ?",
            secondText: "Connectez-vous",
          ),
        ],
      ),
    );
  }
}

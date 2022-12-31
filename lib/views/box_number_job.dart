import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/widgets/dot_indicator.dart';
import 'package:projet_box/widgets/no_account.dart';
//import 'package:intl_phone_field/intl_phone_field.dart';

class BoxNumberJob extends StatelessWidget {
  const BoxNumberJob({
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
            key: form_2,
            child: Column(
              children: [
                IntlPhoneField(
                  initialCountryCode: 'BJ',
                  countries: const ["BJ", "CI", "TG"],
                  // disableLengthCheck: true,
                  // validator: (v) => formConfig["momo"]["rule"](v!.number),
                  invalidNumberMessage: "Numéro valide",
                  controller: formConfig["momo"]["controller"],
                  textAlignVertical: TextAlignVertical.bottom,
                  dropdownTextStyle: makeTextStyleWith(
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  style: makeTextStyleWith(
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Numéro Momo ou Flooz",
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: formConfig["profession"]["controller"],
                  validator: formConfig["profession"]["rule"],
                  style: makeTextStyleWith(
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Profession",
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
                  onPressed: () => {
                    if (form_2.currentState!.validate())
                      {
                        nextFormHandler(),
                      }
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

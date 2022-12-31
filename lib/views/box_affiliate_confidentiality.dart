import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/screens/box_home.dart';
import 'package:projet_box/widgets/dot_indicator.dart';
import 'package:projet_box/widgets/no_account.dart';

class BoxAffilateConfidentiality extends StatefulWidget {
  const BoxAffilateConfidentiality({
    super.key,
    required this.currentPageIndex,
    required this.nextFormHandler,
  });

  final int currentPageIndex;
  final Function nextFormHandler;

  @override
  State<BoxAffilateConfidentiality> createState() =>
      _BoxAffilateConfidentialityState();
}

class _BoxAffilateConfidentialityState
    extends State<BoxAffilateConfidentiality> {
  late bool? confidentialCondAccepted;

  @override
  void initState() {
    confidentialCondAccepted = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWith = MediaQuery.of(context).size.width;
    final textscaleFactor = deviceWith / mockupWidth;

    // Accessoirement la fonction asynchrone d'authentification
    // Puis de redirection vers la page principale
    void loaderAndRedirect(context) async {
      // Affiche un loader dans un AlertDialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text('Chargement en cours...'),
              ],
            ),
          );
        },
      );

      // Attend 10 secondes ou lance l'authentification
      await Future.delayed(const Duration(seconds: 10)).then(
        (value) => {
          Navigator.of(context).pop(),
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const BoxHome(),
            ),
          )
        },
      );
    }

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
                    isActive: index == widget.currentPageIndex,
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
            key: form_5,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: formConfig["codeParrainage"]["controller"],
                  validator: formConfig["codeParrainage"]["rule"],
                  keyboardType: TextInputType.number,
                  style: makeTextStyleWith(
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Code de parrainage",
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: confidentialCondAccepted,
                      onChanged: (val) {
                        setState(() {
                          confidentialCondAccepted = val;
                        });
                      },
                    ),
                    Text(
                      "Accepter les conditions de confidentialités",
                      style: makeTextStyleWith(
                        fontFamily: "Outfit",
                        textfontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  // Une interface d'OTP avant l'interface principale
                  // Annonce de l'ID de l'utilisateur
                  onPressed: () => loaderAndRedirect(context),
                  child: Text(
                    "S'inscrire",
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

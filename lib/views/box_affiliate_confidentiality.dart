import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';
import 'package:projet_box/screens/box_home.dart';
import 'package:projet_box/widgets/box_custom_bar.dart';
import 'package:projet_box/widgets/box_oval_motif_paint.dart';
import 'package:projet_box/widgets/dot_indicator.dart';
import 'package:projet_box/widgets/no_account.dart';

class BoxAffilateConfidentiality extends StatefulWidget {
  const BoxAffilateConfidentiality({
    super.key,
    required this.currentPageIndex,
    required this.nextFormHandler,
    required this.prevFormHandle,
  });

  final int currentPageIndex;
  final Function nextFormHandler;
  final Function prevFormHandle;

  @override
  State<BoxAffilateConfidentiality> createState() =>
      _BoxAffilateConfidentialityState();
}

class _BoxAffilateConfidentialityState
    extends State<BoxAffilateConfidentiality> {
  late bool? confidentialCondAccepted;
  late bool confidentialCondIgnored;

  @override
  void initState() {
    confidentialCondAccepted = false;
    confidentialCondIgnored = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final deviceWith = MediaQuery.of(context).size.width;
    // final textscaleFactor = deviceWith / mockupWidth;

    // Accessoirement la fonction asynchrone d'authentification
    // Puis de redirection vers la page principale
    void loaderAndRedirect(context) async {
      if (confidentialCondAccepted == false) {
        setState(() {
          confidentialCondIgnored == true;
        });
      } else {
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
    }

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
              haveBackBtn: widget.currentPageIndex > 0,
              prevFormHandle: () => widget.prevFormHandle(),
            ),
            Assets.images.boxLogoName.image(height: 150.h, scale: 2.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  steps,
                  (index) => Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: DotIndicator(
                      isActive: index == widget.currentPageIndex,
                      height: 10,
                      width: 29,
                      customColor: boxDarknessBlack,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
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
                      textfontSize: 15.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: boxDarknessBlack,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Code de parrainage",
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Checkbox(
                        isError: confidentialCondIgnored,
                        value: confidentialCondAccepted,
                        onChanged: (val) {
                          setState(
                            () {
                              confidentialCondAccepted = val;
                            },
                          );
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Accepter les conditions de confidentialités",
                          style: makeTextStyleWith(
                            fontFamily: "Outfit",
                            textfontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    // Une interface d'OTP avant l'interface principale
                    // Annonce de l'ID de l'utilisateur
                    onPressed: () => loaderAndRedirect(context),
                    child: Text(
                      "S'inscrire",
                      style: makeTextStyleWith(
                        textfontSize: 22.sp,
                        textfontWeight: FontWeight.w700,
                        textColor: boxDarknessBlack,
                      ),
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

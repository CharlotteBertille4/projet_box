import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projet_box/screens/box_home.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/widgets/no_account.dart';
import 'package:projet_box/widgets/box_custom_bar.dart';

class BoxConnexion extends StatefulWidget {
  const BoxConnexion({super.key});

  @override
  State<BoxConnexion> createState() => _BoxConnexionState();
}

class _BoxConnexionState extends State<BoxConnexion> {
  // Accessoirement la fonction asynchrone pour lancer
  //les requettes d'authentification
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
    await Future.delayed(const Duration(seconds: 5)).then(
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

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final textscaleFactor = deviceWidth / mockupWidth;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromRadius(100.h),
        child: CustomAppBar(
          textscaleFactor: textscaleFactor,
          prevFormHandle: () {},
          haveBackBtn: false,
          label: "Connexion",
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 51.h, left: 22.w, right: 22.w),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: makeTextStyleWith(
                      textfontSize: 15.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Entrez votre ID",
                    ),
                  ),
                  SizedBox(height: 16.h),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: "Entrez votre mot de passe",
                    ),
                    style: makeTextStyleWith(
                      textfontSize: 15.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () => {},
                  child: Text(
                    "Mot de passe oublié ?",
                    textScaleFactor: textscaleFactor,
                    style: makeTextStyleWith(
                      textfontSize: 12.sp,
                      textfontWeight: FontWeight.w500,
                      textColor: boxtranslucideBlack,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    // TODO: IMPLEMENTER LA REQUETE D'AUTHENTIFICATION
                    onPressed: () => loaderAndRedirect(context),
                    child: Text(
                      "Se connecter",
                      textScaleFactor: textscaleFactor,
                      style: makeTextStyleWith(
                        textfontSize: 22.sp,
                        textfontWeight: FontWeight.w700,
                        textColor: boxdarknessBlack,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 33.h),
            NoAccount(
              isLogin: true,
              textscaleFactor: textscaleFactor,
              firstText: "Aucun compte ?",
              secondText: "Creer un compte",
            ),
          ],
        ),
      ),
    );
  }
}

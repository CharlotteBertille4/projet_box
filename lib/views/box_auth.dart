import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';
import 'package:projet_box/screens/box_home.dart';
import 'package:projet_box/widgets/box_custom_bar.dart';
import 'package:projet_box/widgets/box_oval_motif_paint.dart';
import 'package:projet_box/widgets/no_account.dart';

class BoxAuth extends StatefulWidget {
  const BoxAuth({super.key});

  @override
  State<BoxAuth> createState() => _BoxAuthState();
}

class _BoxAuthState extends State<BoxAuth> {
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
  void initState() {
    // Ecran uniquement en portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 26, right: 26, top: 45),
        child: CustomPaint(
          painter: BoxOvalMotifPaint(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                textscaleFactor: 1,
                label: 'Connexion',
                haveBackBtn: false,
                prevFormHandle: () {},
              ),
              Assets.images.boxLogoName.image(height: 150.h, scale: 2.1),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: makeTextStyleWith(
                        textfontSize: 15,
                        textfontWeight: FontWeight.w400,
                        textColor: boxDarknessBlack,
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
                        textfontSize: 15,
                        textfontWeight: FontWeight.w400,
                        textColor: boxDarknessBlack,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Mot de passe oublié ?",
                      style: makeTextStyleWith(
                        textfontSize: 12,
                        textfontWeight: FontWeight.w500,
                        textColor: boxtranslucideBlack,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      // TODO: IMPLEMENTER LA REQUETE D'AUTHENTIFICATION
                      onPressed: () => loaderAndRedirect(context),
                      child: Text(
                        "Se connecter",
                        style: makeTextStyleWith(
                          textfontSize: 22,
                          textfontWeight: FontWeight.w700,
                          textColor: boxDarknessBlack,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              const NoAccount(
                isLogin: true,
                textscaleFactor: 1,
                firstText: "Aucun compte ?",
                secondText: "Creer un compte",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

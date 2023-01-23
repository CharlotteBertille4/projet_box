import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/widgets/box_oval_motif_paint.dart';
import 'package:projet_box/widgets/no_account.dart';

class BoxUserRegister extends StatefulWidget {
  const BoxUserRegister({Key? key}) : super(key: key);

  @override
  State<BoxUserRegister> createState() => _BoxUserRegisterState();
}

class _BoxUserRegisterState extends State<BoxUserRegister> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Inscription",
                        style: GoogleFonts.outfit(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "Bienvenue !",
                        style: GoogleFonts.outfit(
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => {},
                    label: Text(
                      "Retour",
                      style: GoogleFonts.outfit(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    scale: 2.1,
                    image: AssetImage(
                      'assets/images/box-logo-name.png',
                    ),
                  ),
                ),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: makeTextStyleWith(
                        textfontSize: 15,
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
                        textfontSize: 15,
                        textfontWeight: FontWeight.w400,
                        textColor: boxdarknessBlack,
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
                      onPressed: () => {},
                      child: Text(
                        "Se connecter",
                        style: makeTextStyleWith(
                          textfontSize: 22,
                          textfontWeight: FontWeight.w700,
                          textColor: boxdarknessBlack,
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

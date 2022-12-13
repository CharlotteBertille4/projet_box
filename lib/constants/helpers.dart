import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';

// Creating my custom material color

const Map<int, Color> boxGoldenShades = {
  50: Color.fromRGBO(188, 138, 26, .1),
  100: Color.fromRGBO(188, 138, 26, .2),
  200: Color.fromRGBO(188, 138, 26, .3),
  300: Color.fromRGBO(188, 138, 26, .4),
  400: Color.fromRGBO(188, 138, 26, .5),
  500: Color.fromRGBO(188, 138, 26, .6),
  600: Color.fromRGBO(188, 138, 26, .7),
  700: Color.fromRGBO(188, 138, 26, .8),
  800: Color.fromRGBO(188, 138, 26, .9),
  900: Color.fromRGBO(188, 138, 26, 1),
};

MaterialColor boxGoldenPrimary = const MaterialColor(
  0xFFBC8A1A,
  boxGoldenShades,
);

// Les variable globales utilisées au les interfaces
// Les dimensions de la maquettes

const mockupHeight = 812;
const mockupWidth = 375;

// Les code couleurs

Color motifColor = const Color(0xFFFFC600);
const Color boxWhiteness = Color(0xFFFFFFFF);
const Color boxHintColor = Color(0xFF6D6A6A);
const Color boxdarknessBlack = Color(0xFF140E17);
const Color boxtranslucideBlack = Color(0xFF464444);
const Color boxLineSeparatorBack = Color(0xFF222222);
const Color boxLineSeparatorGrey = Color(0xFF222222);
Color boxtranslucideGoldenPrimary = const Color(0xFFFFC600).withOpacity(0.2);

// Les gradients

// linear-gradient(269.97deg, #222222 4.18%, rgba(196, 196, 196, 0) 77.28%);

LinearGradient rightLineBg = const LinearGradient(
  colors: [
    boxLineSeparatorBack,
    boxWhiteness,
  ],
);

LinearGradient leftLineBg = const LinearGradient(
  colors: [boxWhiteness, boxLineSeparatorBack],
);

RadialGradient zenContainerRadient = const RadialGradient(
  center: Alignment(0.003, -0.44),
  radius: 0.66,
  colors: <Color>[Color(0xbc07051c), Color(0xff07051c)],
  stops: <double>[0, 0.507],
);

// Les Typographies de police et parametrages

TextStyle makeTextStyleWith({
  String fontFamily = 'Outfit',
  double? textfontSize,
  FontWeight? textfontWeight,
  Color? textColor,
}) {
  return GoogleFonts.getFont(
    fontFamily,
    fontStyle: FontStyle.normal,
    fontWeight: textfontWeight,
    fontSize: textfontSize,
    color: textColor,
  );
}

ThemeData boxAppThemeData = ThemeData(
  fontFamily: "Outfit",
  brightness: Brightness.light,
  primaryColor: boxGoldenPrimary,
  primarySwatch: boxGoldenPrimary,
  scaffoldBackgroundColor: boxWhiteness,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  inputDecorationTheme: InputDecorationTheme(
    // constraints: const BoxConstraints(minHeight: 48, maxHeight: 48),
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: boxHintColor),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: boxGoldenPrimary),
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    hintStyle: makeTextStyleWith(
      textfontSize: 15,
      textfontWeight: FontWeight.w400,
      textColor: boxHintColor,
    ),
  ),
  textTheme: TextTheme(
    labelSmall: makeTextStyleWith(
      textfontSize: 15,
      textfontWeight: FontWeight.w400,
      textColor: boxHintColor,
    ),
    labelMedium: makeTextStyleWith(
      textfontSize: 22,
      textfontWeight: FontWeight.w700,
      textColor: boxdarknessBlack,
    ),
    bodySmall: makeTextStyleWith(
      textfontSize: 12,
      textfontWeight: FontWeight.w500,
    ),
    bodyMedium: makeTextStyleWith(
      textfontSize: 24,
      textfontWeight: FontWeight.w600,
    ),
    bodyLarge: makeTextStyleWith(
      textfontSize: 30,
      textfontWeight: FontWeight.w700,
    ),
  ),

  // Pour les boutons classique
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: const Size.fromHeight(48),
      //backgroundColor: boxGoldenPrimary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
    ),
  ),
);

List<DropdownMenuItem<Object?>> choicesSexeList = [
  const DropdownMenuItem(
    value: "Homme",
    child: Text(
      "Homme",
    ),
  ),
  const DropdownMenuItem(
    value: "Femme",
    child: Text(
      "Femme",
    ),
  )
];

// Register user validate rules

final form_1 = GlobalKey<FormState>();
final form_2 = GlobalKey<FormState>();
final form_3 = GlobalKey<FormState>();
final form_4 = GlobalKey<FormState>();

TextEditingController nomController = TextEditingController();
TextEditingController prenomController = TextEditingController();
// TextEditingController birthdayController = TextEditingController();

Map formConfig = {
  // Form 1

  'nom': {
    "controller": nomController,
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre nom",
    ).build()
  },
  'prenom': {
    "controller": prenomController,
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre prénom",
    ).build()
  },

  // Form 2

  'momo': {
    "controller": TextEditingController(),
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre numéro momo ou flooz",
    )
        .phone("Numéro de télephone invalide")
        .regExp(RegExp(r'^\d{8}$'), "8 chiffres maximun")
        .build()
  },

  'profession': {
    "controller": TextEditingController(),
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre profession",
    ).build()
  },

  // Form 3

  'sexe': {
    "controller": TextEditingController(),
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre sexe",
    ).build()
  },
  'dateNaissance': {
    "controller": TextEditingController(),
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre date de naissance",
    ).build()
  },

  // Form 4

  'password': {
    "controller": TextEditingController(),
    "rule": ValidationBuilder(
      requiredMessage: "Entrer votre mot de passe",
    ).minLength(6, "6 caractères minimun requis").build()
  },
  'confirmPassword': {
    "controller": TextEditingController(),
    "rule": ValidationBuilder(
      requiredMessage: "Confirmer le mot de passe",
    ).minLength(6, "6 caractères minimun requis").build()
  },
};

final nomRule = ValidationBuilder(
  requiredMessage: "Renseigner votre nom",
).build();

final prenomRule = ValidationBuilder(
  requiredMessage: "Renseigner votre prénom",
).build();

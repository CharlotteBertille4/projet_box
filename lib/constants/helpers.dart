import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/gen/assets.gen.dart';

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

RadialGradient boxRad = const RadialGradient(
  center: Alignment(0.003, -0.44),
  radius: 0.66,
  colors: <Color>[Color(0xbc07051c), Color(0xff07051c)],
  stops: <double>[0, 0.507],
);

LinearGradient floatingBtnGradient = const LinearGradient(
  begin: Alignment(0, -1),
  end: Alignment(0, 1),
  colors: <Color>[Color(0xffbc8a1a), Color(0xd3ffdd92)],
  stops: <double>[0, 1],
);
// Les variable globales utilisées au les interfaces
// Les dimensions de la maquettes

const mockupHeight = 812;
const mockupWidth = 375;

// Les code couleurs

Color motifColor = const Color(0xFFFFC600);
const Color boxWhiteness = Color(0xFFFFFFFF);
const Color boxGray = Color(0xFFF5F5F5);
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

LinearGradient savingIndicatorGradient = const LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFFBC8A1A),
    Color.fromRGBO(255, 198, 0, 0.94),
    Color.fromRGBO(255, 230, 143, 0.94)
  ],
  stops: [0.11, 0.60, 0.82],
);

RadialGradient eggContainerGradient = const RadialGradient(
  center: Alignment.center,
  radius: 0.5383,
  stops: [0.0, 0.1859, 0.8683],
  colors: [
    Colors.white,
    Color.fromRGBO(255, 203, 21, 0.38),
    Color.fromARGB(15, 12, 10, 32),
  ],
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
  scaffoldBackgroundColor: boxGray,
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

List<DropdownMenuItem<Object>> choicesSexeList = [
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

List<DropdownMenuItem<String>> modePaiementList = [
  DropdownMenuItem(
    value: "Momo",
    child: Image.asset(
      'assets/images/momo.png',
      scale: 2.5,
    ),
  ),
  DropdownMenuItem(
    value: "Flooz",
    child: Image.asset(
      'assets/images/moov.png',
      scale: 2.5,
    ),
  ),
];

// Register user validate rules

final form_1 = GlobalKey<FormState>();
final form_2 = GlobalKey<FormState>();
final form_3 = GlobalKey<FormState>();
final form_4 = GlobalKey<FormState>();
final createBoxForm = GlobalKey<FormState>();

TextEditingController nomController = TextEditingController();
TextEditingController sexeController = TextEditingController();
TextEditingController momoController = TextEditingController();
TextEditingController prenomController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController birthdayController = TextEditingController();
TextEditingController professionController = TextEditingController();
TextEditingController consfirmPasswordController = TextEditingController();

// Controller des inputs pour la creation d'une caisse
TextEditingController montant = TextEditingController();
TextEditingController intitule = TextEditingController();
TextEditingController frequence = TextEditingController();
TextEditingController fuseauHoraire = TextEditingController();

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
    "controller": momoController,
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre numéro momo ou flooz",
    )
        .phone("Numéro de télephone invalide")
        .regExp(RegExp(r'^\d{8}$'), "8 chiffres maximun")
        .build()
  },

  'profession': {
    "controller": professionController,
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre profession",
    ).build()
  },

  // Form 3
  'sexe': {
    "controller": sexeController,
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre sexe",
    ).build()
  },
  'dateNaissance': {
    "controller": birthdayController,
    "rule": ValidationBuilder(
      requiredMessage: "Renseigner votre date de naissance",
    ).build()
  },

  // Form 4
  'password': {
    "controller": passwordController,
    "rule": ValidationBuilder(
      requiredMessage: "Entrer votre mot de passe",
    ).minLength(6, "6 caractères minimun requis").build()
  },
  'confirmPassword': {
    "controller": consfirmPasswordController,
    "rule": ValidationBuilder(
      requiredMessage: "Confirmer le mot de passe",
    ).minLength(6, "6 caractères minimun requis").build()
  },
};

// Configuration du menu profile

List profileConfig = [
  {"label": "Mode de paiement", "icon": Assets.svg.pay.svg()},
  {"label": "Mot de passe", "icon": Assets.svg.pwd.svg()},
  {"label": "ID Carte d'identité", "icon": Assets.svg.pay.svg()}
];

// Configuration du menu

List menuConfig = [
  {"label": "Historique", "icon": Assets.svg.historique.svg()},
  {"label": "Créer une caisse", "icon": Assets.svg.creercaisse.svg()},
  {"label": "Annulée une caisse", "icon": Assets.svg.annulercaisse.svg()},
  {"label": "Cadeaux", "icon": Assets.svg.cadeau.svg()},
  {"label": "Partagé l'application", "icon": Assets.svg.share.svg()},
  {"label": "Compte commercial", "icon": Assets.svg.commercial.svg()},
  {"label": "Contactez nous", "icon": Assets.svg.contact.svg()},
  {"label": "A propos", "icon": Assets.svg.about.svg()},
];

RadialGradient rader = const RadialGradient(
  center: Alignment(0.5013, 0.2798),
  radius: 1.262,
  colors: [
    Color.fromARGB(191, 7, 5, 28),
    Color(0xFF07051C),
  ],
);

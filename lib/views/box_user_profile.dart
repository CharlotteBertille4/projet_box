import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/widgets/custom_clipper_path.dart';

class BoxUserProfile extends StatefulWidget {
  const BoxUserProfile({super.key});

  @override
  State<BoxUserProfile> createState() => _BoxUserProfileState();
}

class _BoxUserProfileState extends State<BoxUserProfile> {
  late bool automaticWithdraw;
  late bool automaticDeposit;

  @override
  void initState() {
    automaticDeposit = true;
    automaticWithdraw = true;
    super.initState();
  }

  setProfileInfos(context) {
    // Affiche un loader dans un AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Infos de Profile',
            style: makeTextStyleWith(
              textfontSize: 18,
              textfontWeight: FontWeight.w600,
              textColor: boxdarknessBlack,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Nom & Prénoms",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.phone,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Numéro de télephone",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Valider',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: boxdarknessBlack,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Annuler',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: Colors.red,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  setPersonalEmail(context) {
    // Affiche un loader dans un AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Infos de profile',
            style: makeTextStyleWith(
              textfontSize: 18,
              textfontWeight: FontWeight.w600,
              textColor: boxdarknessBlack,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Entrer votre email",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Valider',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: boxdarknessBlack,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Annuler',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: Colors.red,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  setPassword(context) {
    // Affiche un loader dans un AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Mot de passe',
            style: makeTextStyleWith(
              textfontSize: 18,
              textfontWeight: FontWeight.w600,
              textColor: boxdarknessBlack,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Entrer l'ancien mot de passe",
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Entrer le nouveau mot de passe",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Valider',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: boxdarknessBlack,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Annuler',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: Colors.red,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  setIdCart(context) {
    // Affiche un loader dans un AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'ID carte d\'identité',
            style: makeTextStyleWith(
              textfontSize: 18,
              textfontWeight: FontWeight.w600,
              textColor: boxdarknessBlack,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Entrer l'id de la carte d'identité",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Valider',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: boxdarknessBlack,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Annuler',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: Colors.red,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  setModePaiement(context) {
    // Affiche un loader dans un AlertDialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Mode de paiement',
            style: makeTextStyleWith(
              textfontSize: 18,
              textfontWeight: FontWeight.w600,
              textColor: boxdarknessBlack,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Entrer votre mode de paiement",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Valider',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: boxdarknessBlack,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Annuler',
                style: makeTextStyleWith(
                  textfontSize: 18,
                  textfontWeight: FontWeight.w500,
                  textColor: Colors.red,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void makeActionOf(context, index) {
    switch (index) {
      case 0:
        setPersonalEmail(context);
        break;

      case 1:
        setPassword(context);
        break;

      case 2:
        setIdCart(context);
        break;

      case 3:
        setModePaiement(context);
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromRadius(180),
        child: Stack(
          children: [
            ClipPath(
              clipper: CustomClipperPath(),
              child: Container(
                color: const Color(0xFFD9D9D9),
                clipBehavior: Clip.none,
                height: 290,
                width: double.infinity,
              ),
            ),
            ClipPath(
              clipper: CustomClipperPath(),
              child: Container(
                color: boxGoldenPrimary,
                clipBehavior: Clip.none,
                height: 260,
                width: double.infinity,
                child: Column(
                  children: [
                    AppBar(
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      title: Text(
                        "Profile",
                        style: makeTextStyleWith(
                          textfontSize: 25,
                          textfontWeight: FontWeight.w500,
                          textColor: boxWhiteness,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage("assets/images/plate.png"),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "John Doe",
                                      overflow: TextOverflow.ellipsis,
                                      style: makeTextStyleWith(
                                        textfontSize: 22,
                                        textfontWeight: FontWeight.w500,
                                        textColor: boxWhiteness,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () => setProfileInfos(context),
                                      child: const Icon(
                                        Icons.edit_outlined,
                                        color: boxWhiteness,
                                        size: 18.0,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "+229 61734777",
                                  style: makeTextStyleWith(
                                    textfontSize: 19,
                                    textfontWeight: FontWeight.w500,
                                    textColor: boxWhiteness,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            ...List.generate(
              profileConfig.length,
              (index) => ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color(0xFF1B1D2F),
                  child: profileConfig[index]["icon"],
                ),
                title: Text(
                  profileConfig[index]["label"],
                  style: makeTextStyleWith(
                    textfontSize: 18,
                    textfontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  profileConfig[index]["value"],
                  style: makeTextStyleWith(
                    textfontSize: 14,
                    textfontWeight: FontWeight.w400,
                  ),
                ),
                onTap: () => makeActionOf(context, index),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: boxWhiteness,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: boxdarknessBlack.withOpacity(0.25),
                    blurRadius: 4.0,
                    offset: const Offset(0.0, 4.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dépot automatique",
                        style: makeTextStyleWith(
                          textfontSize: 18,
                          textfontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CupertinoSwitch(
                        activeColor: boxGoldenPrimary,
                        trackColor: const Color(0xFF60708F),
                        // thumbColor: const Color(0xFF33364D),
                        value: automaticDeposit,
                        onChanged: (val) {
                          setState(() {
                            automaticDeposit = val;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Retrait automatique",
                        style: makeTextStyleWith(
                          textfontSize: 18,
                          textfontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CupertinoSwitch(
                        activeColor: boxGoldenPrimary,
                        trackColor: const Color(0xFF60708F),
                        // thumbColor: const Color(0xFF33364D),
                        value: automaticWithdraw,
                        onChanged: (val) {
                          setState(() {
                            automaticWithdraw = val;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

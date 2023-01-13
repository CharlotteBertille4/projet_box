import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:projet_box/widgets/box_affiliate_widget.dart';

class BoxCommercialAccount extends StatefulWidget {
  const BoxCommercialAccount({super.key});

  @override
  State<BoxCommercialAccount> createState() => _BoxCommercialAccountState();
}

class _BoxCommercialAccountState extends State<BoxCommercialAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: Container(
          decoration: BoxDecoration(color: boxGoldenPrimary),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              AppBar(),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Box",
                      style: makeTextStyleWith(
                        textfontSize: 35,
                        textfontWeight: FontWeight.w600,
                        textColor: boxdarknessBlack,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Utilisez box, épargnez, partagez l'applis avec vos amis et gagner des commissions supplémentaires",
                      textAlign: TextAlign.center,
                      style: makeTextStyleWith(
                        textfontSize: 20,
                        textfontWeight: FontWeight.w400,
                        textColor: boxWhiteness,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15,
                left: 15,
                bottom: -50,
                child: Container(
                  height: 80,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: boxWhiteness,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: boxdarknessBlack.withOpacity(0.25),
                        blurRadius: 4.0,
                        offset: const Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Commission (Solde)",
                          style: makeTextStyleWith(
                            textfontSize: 18,
                            textfontWeight: FontWeight.w600,
                            textColor: boxdarknessBlack,
                          ),
                        ),
                        const VerticalDivider(
                          width: 2,
                          color: boxHintColor,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.wallet),
                          label: Text(
                            "1500 FCFA",
                            style: makeTextStyleWith(
                              textfontSize: 20,
                              textfontWeight: FontWeight.w600,
                              textColor: boxdarknessBlack,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 75, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Liens utiles",
              style: makeTextStyleWith(
                textfontSize: 20,
                textfontWeight: FontWeight.w400,
                textColor: boxdarknessBlack,
              ),
            ),
            const SizedBox(height: 20),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(5),
              dashPattern: const [6, 3],
              color: boxGoldenPrimary,
              strokeWidth: 1.5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: boxGoldenPrimary.withOpacity(0.1),
                  child: const Icon(
                    Icons.perm_identity_sharp,
                    color: boxdarknessBlack,
                  ),
                ),
                title: Text(
                  "B7ULXV",
                  style: makeTextStyleWith(
                    textfontSize: 18,
                    textfontWeight: FontWeight.w500,
                    textColor: boxdarknessBlack,
                  ),
                ),
                subtitle: Text(
                  "Code de parainage",
                  style: makeTextStyleWith(
                    textfontSize: 16,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.copy),
                  label: Text(
                    "Copier",
                    style: makeTextStyleWith(
                      textfontSize: 16,
                      textfontWeight: FontWeight.w500,
                      textColor: boxdarknessBlack,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(5),
              dashPattern: const [6, 3],
              color: boxGoldenPrimary,
              strokeWidth: 1.5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: boxGoldenPrimary.withOpacity(0.1),
                  child: const Icon(
                    Icons.link,
                    color: boxdarknessBlack,
                  ),
                ),
                title: Text(
                  " - ",
                  style: makeTextStyleWith(
                    textfontSize: 18,
                    textfontWeight: FontWeight.w500,
                    textColor: boxdarknessBlack,
                  ),
                ),
                subtitle: Text(
                  "Lien de partage",
                  style: makeTextStyleWith(
                    textfontSize: 16,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  label: Text(
                    "Partager",
                    style: makeTextStyleWith(
                      textfontSize: 16,
                      textfontWeight: FontWeight.w500,
                      textColor: boxdarknessBlack,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(height: 2),
            const SizedBox(height: 30),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: boxWhiteness,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: boxdarknessBlack.withOpacity(0.25),
                    blurRadius: 2.0,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
              ),
              child: Center(
                child: ListTile(
                  onTap: () {
                    showAffiliates(context);
                  },
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: boxGoldenPrimary.withOpacity(0.1),
                    child: const Icon(
                      Icons.person_add_sharp,
                      color: boxdarknessBlack,
                    ),
                  ),
                  title: Text(
                    "Listes des parainnées",
                    style: makeTextStyleWith(
                      textfontSize: 18,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                  ),
                  subtitle: Text(
                    "12 parainné(e)s",
                    style: makeTextStyleWith(
                      textfontSize: 16,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: boxdarknessBlack,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(height: 2),
            const SizedBox(height: 30),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () => {
                      // TODO: IMPLEMENTER UN ACTION LANCER LE RETRAIT
                      // DE LA COMMISSION DE L'UTILISATEUR
                    },
                    child: Text(
                      "Retirer ma commission",
                      style: makeTextStyleWith(
                        textfontSize: 20,
                        textfontWeight: FontWeight.w600,
                        textColor: boxdarknessBlack,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

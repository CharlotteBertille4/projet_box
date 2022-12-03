import 'package:flutter/material.dart';
import 'package:box/views/box_login.dart';
import 'package:box/constants/helpers.dart';
import 'package:box/views/box_register.dart';

class BoxAuthSide extends StatelessWidget {
  const BoxAuthSide({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWith = MediaQuery.of(context).size.width;
    final scalewidth = mockupWidth / deviceWith;
    final textscaleFactor = deviceWith / mockupWidth;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 391,
              padding: const EdgeInsets.symmetric(
                vertical: 60,
                horizontal: 50,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                gradient: zenContainerRadient,
              ),
              child: Image.asset(
                'assets/images/zen-box.png',
                scale: scalewidth,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              "BOX",
              textScaleFactor: textscaleFactor,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                "Au coeur de vos economies",
                textScaleFactor: textscaleFactor,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.merge(const TextStyle(color: boxtranslucideBlack)),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BoxConnexion(),
                        ),
                      ),
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(65),
                      backgroundColor: boxGoldenPrimary,
                      padding: const EdgeInsets.symmetric(vertical: 19),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Text(
                      "Se connecter",
                      textScaleFactor: textscaleFactor,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BoxRegister(),
                        ),
                      ),
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(65),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      backgroundColor: boxdarknessBlack,
                      padding: const EdgeInsets.symmetric(vertical: 19),
                    ),
                    child: Text(
                      "S'inscrire",
                      textScaleFactor: textscaleFactor,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.merge(const TextStyle(color: boxWhiteness)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      gradient: leftLineBg,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {},
                  child: Text(
                    "Mot de passe oublié ? ",
                    textScaleFactor: textscaleFactor,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 3,
                    decoration: BoxDecoration(
                      gradient: rightLineBg,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

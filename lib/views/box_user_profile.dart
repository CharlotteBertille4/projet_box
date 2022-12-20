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
                height: 350,
                width: double.infinity,
              ),
            ),
            ClipPath(
              clipper: CustomClipperPath(),
              child: Container(
                color: boxGoldenPrimary,
                clipBehavior: Clip.none,
                height: 300,
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
                      height: 140,
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
                                Text(
                                  "Evrajody Gildas",
                                  style: makeTextStyleWith(
                                    textfontSize: 22,
                                    textfontWeight: FontWeight.w500,
                                    textColor: boxWhiteness,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "+229 61734777",
                                  style: makeTextStyleWith(
                                    textfontSize: 19,
                                    textfontWeight: FontWeight.w500,
                                    textColor: boxWhiteness,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "ekammianmichael@gmail.com",
                                  overflow: TextOverflow.ellipsis,
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
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                onTap: () {},
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 30,
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
                  const SizedBox(height: 10),
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

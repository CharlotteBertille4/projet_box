import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/widgets/box_custombottombar.dart';
import 'package:projet_box/widgets/box_customfloatingbtn.dart';

class BoxCreateInterface extends StatefulWidget {
  const BoxCreateInterface({super.key});

  @override
  State<BoxCreateInterface> createState() => _BoxCreateInterfaceState();
}

class _BoxCreateInterfaceState extends State<BoxCreateInterface> {
  late bool remideMeSaving;
  late TextEditingController startBoxDateCont;
  late TextEditingController endBoxDateCont;

  @override
  void initState() {
    remideMeSaving = true;
    startBoxDateCont = TextEditingController(text: "dd/MM/AAAA");
    endBoxDateCont = TextEditingController(text: "dd/MM/AAAA");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    String? selectedValue = modePaiementList.first.value;
    final createBoxForm = GlobalKey<FormState>();

    // Fonction de selection des dates délimitant la caisse
    Future setBoxDate(
        TextEditingController inputcontroller, String helper) async {
      DateTime? picketTime = await showDatePicker(
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        keyboardType: TextInputType.datetime,
        helpText: helper,
        cancelText: "Annuler",
        confirmText: "Valider",
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(DateTime.now().year + 1),
      );

      if (picketTime != null) {
        String date = DateFormat('dd/MM/yyyy').format(picketTime);
        setState(() {
          inputcontroller.text = date;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Création d'une caisse",
          style: makeTextStyleWith(
            textfontSize: 25,
            textfontWeight: FontWeight.w500,
            textColor: boxWhiteness,
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton:
      //     keyboardIsOpened ? null : const CustomFloatingActionBtn(),
      //bottomNavigationBar: const CustomBottombar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Form(
          key: createBoxForm,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
                decoration: const InputDecoration(
                  hintText: "Intitulé",
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  hintText: "Fréquence",
                ),
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Montant",
                ),
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Fuseau horaire",
                ),
                style: makeTextStyleWith(
                  textfontSize: 15,
                  textfontWeight: FontWeight.w400,
                  textColor: boxdarknessBlack,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 18,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mode de paiement",
                          style: makeTextStyleWith(
                            textfontSize: 18,
                            textfontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: DropdownButtonFormField(
                            items: modePaiementList,
                            value: selectedValue,
                            style: makeTextStyleWith(
                              textfontSize: 16,
                              textfontWeight: FontWeight.w400,
                              textColor: boxdarknessBlack,
                            ),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: boxGray,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              alignLabelWithHint: true,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                            ),
                            onChanged: ((value) {
                              debugPrint(value.toString());
                            }),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      readOnly: true,
                      textAlign: TextAlign.justify,
                      controller: startBoxDateCont,
                      textAlignVertical: TextAlignVertical.bottom,
                      onTap: () =>
                          setBoxDate(startBoxDateCont, "Début de la caisse"),
                      validator: formConfig["dateNaissance"]["rule"],
                      style: GoogleFonts.abel(
                        color: boxdarknessBlack,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: boxGray,
                        prefixIcon: const Icon(Icons.calendar_month),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        icon: Text(
                          "Début",
                          style: makeTextStyleWith(
                            textfontSize: 18,
                            textfontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      readOnly: true,
                      controller: endBoxDateCont,
                      onTap: () =>
                          setBoxDate(endBoxDateCont, "Fin de la caisse"),
                      textAlign: TextAlign.justify,
                      textAlignVertical: TextAlignVertical.bottom,
                      style: GoogleFonts.abel(
                        color: boxdarknessBlack,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: boxGray,
                        prefixIcon: const Icon(Icons.calendar_month),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        icon: Text(
                          "Fin       ",
                          style: makeTextStyleWith(
                            textfontSize: 18,
                            textfontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rappeler",
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
                          value: remideMeSaving,
                          onChanged: (val) {
                            setState(() {
                              remideMeSaving = val;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () => {
                        // CONTROLE ET CREATION D'UNE CAISSE
                        if (createBoxForm.currentState!.validate())
                          {debugPrint("CREATION D'UN CAISSE")}
                      },
                      child: Text(
                        "Creer ma caisse",
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
      ),
    );
  }
}

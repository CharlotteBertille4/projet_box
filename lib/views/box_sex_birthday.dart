import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/widgets/dot_indicator.dart';
import 'package:projet_box/widgets/no_account.dart';
//import 'package:intl/intl.dart';

class BoxSexBirthday extends StatefulWidget {
  const BoxSexBirthday({
    super.key,
    required this.currentPageIndex,
    required this.nextFormHandler,
  });

  final int currentPageIndex;
  final Function nextFormHandler;

  @override
  State<BoxSexBirthday> createState() => _BoxSexBirthdayState();
}

class _BoxSexBirthdayState extends State<BoxSexBirthday> {
  final _dateController = formConfig["dateNaissance"]["controller"];
  @override
  Widget build(BuildContext context) {
    final deviceWith = MediaQuery.of(context).size.width;
    final textscaleFactor = deviceWith / mockupWidth;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 26, left: 22, right: 22),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                steps,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DotIndicator(
                    isActive: index == widget.currentPageIndex,
                    height: 10,
                    width: 29,
                    customColor: boxdarknessBlack,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Form(
            key: form_3,
            child: Column(
              children: [
                DropdownButtonFormField(
                  hint: const Text("Sexe"),
                  items: choicesSexeList,
                  // validator: formConfig["sexe"]["rule"],
                  isDense: false,
                  style: makeTextStyleWith(
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onChanged: ((value) {
                    debugPrint(value.toString());
                  }),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _dateController,
                  validator: formConfig["dateNaissance"]["rule"],
                  readOnly: true,
                  onTap: () async {
                    DateTime? picketTime = await showDatePicker(
                      initialEntryMode: DatePickerEntryMode.calendarOnly,
                      keyboardType: TextInputType.datetime,
                      helpText: "Date de Naissance",
                      cancelText: "Annuler",
                      confirmText: "Valider",
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(DateTime.now().year + 1),
                    );

                    if (picketTime != null) {
                      String userBirthday =
                          DateFormat('dd/MM/yyyy').format(picketTime);
                      setState(() {
                        _dateController.text = userBirthday;
                      });
                    }
                  },
                  style: makeTextStyleWith(
                    textfontSize: 15,
                    textfontWeight: FontWeight.w400,
                    textColor: boxdarknessBlack,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Entrez votre date de naissance",
                    suffixIcon: Icon(Icons.calendar_month),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => {
                    if (form_3.currentState!.validate())
                      {
                        //TODO: GESTION DU FORMULAIRE NIVEAU 3
                        widget.nextFormHandler(),
                      }
                  },
                  child: Text(
                    "Suivant",
                    textScaleFactor: textscaleFactor,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          NoAccount(
            isLogin: false,
            textscaleFactor: textscaleFactor,
            firstText: "Déja un compte ?",
            secondText: "Connectez-vous",
          ),
        ],
      ),
    );
  }
}

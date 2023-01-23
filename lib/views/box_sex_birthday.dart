import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/gen/assets.gen.dart';
import 'package:projet_box/widgets/box_custom_bar.dart';
import 'package:projet_box/widgets/box_oval_motif_paint.dart';
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
    // final deviceWith = MediaQuery.of(context).size.width;
    // final textscaleFactor = deviceWith / mockupWidth;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(left: 26, right: 26, top: 45),
      child: CustomPaint(
        painter: BoxOvalMotifPaint(),
        child: Column(
          children: [
            CustomAppBar(
              textscaleFactor: 1,
              label: 'Inscription',
              haveBackBtn: true,
              prevFormHandle: () {},
            ),
            Assets.images.boxLogoName.image(height: 150.h, scale: 2.1),
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
            SizedBox(height: 40.h),
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
                      textfontSize: 15.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: boxdarknessBlack,
                    ),
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                    onChanged: ((value) {
                      debugPrint(value.toString());
                    }),
                  ),
                  SizedBox(height: 15.h),
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
                      textfontSize: 15.sp,
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
            SizedBox(height: 30.h),
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
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h),
            const NoAccount(
              isLogin: false,
              textscaleFactor: 1,
              firstText: "Déja un compte ?",
              secondText: "Connectez-vous",
            ),
          ],
        ),
      ),
    );
  }
}

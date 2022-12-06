import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_box/constants/helpers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.textscaleFactor,
    required this.label,
  });

  final double textscaleFactor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -215,
          right: -205,
          left: 200,
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: motifColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: -240,
          left: -30,
          right: -18,
          child: Container(
            height: 450,
            decoration: BoxDecoration(
              color: motifColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 4,
          right: 0,
          bottom: -56,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                scale: 2.1,
                image: AssetImage(
                  'assets/images/box-logo-name.png',
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    textScaleFactor: textscaleFactor,
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Bienvenue !",
                    textScaleFactor: textscaleFactor,
                    style: GoogleFonts.outfit(
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

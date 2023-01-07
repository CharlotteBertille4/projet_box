import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';

class BoxOnboardContent extends StatelessWidget {
  const BoxOnboardContent({
    super.key,
    required this.image,
    required this.description,
  });

  final String image, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
          width: double.infinity,
        ),
        const Spacer(),
        Text(
          description,
          textAlign: TextAlign.center,
          style: boxOnBoringThemeFont,
        ),
        const Spacer(),
      ],
    );
  }
}

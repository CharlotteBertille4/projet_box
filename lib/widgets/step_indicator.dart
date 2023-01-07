import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({
    super.key,
    this.isActive = false,
    required this.customColor,
    required this.height,
    required this.width,
  });

  final bool isActive;
  final Color customColor;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isActive ? customColor : const Color(0xFFD9D9D9),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}

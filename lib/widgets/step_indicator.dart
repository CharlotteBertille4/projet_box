import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({
    super.key,
    this.isActive = false,
    required this.customColor,
  });

  final bool isActive;
  final Color customColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
      height: 4,
      width: isActive ? 17 : 4,
      decoration: BoxDecoration(
        color: isActive ? customColor : const Color(0xFF353333),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}

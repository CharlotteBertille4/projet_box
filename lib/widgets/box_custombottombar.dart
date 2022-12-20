import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';

class CustomBottombar extends StatelessWidget {
  const CustomBottombar({
    super.key,
    required this.pageIndex,
    required this.switchPage,
  });

  final int pageIndex;
  final Function switchPage;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 1,
      currentIndex: pageIndex,
      onTap: (value) => switchPage(value),
      backgroundColor: const Color(0xFF1B1D2F),
      unselectedItemColor: boxWhiteness,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.person_3), label: "Profile"),
      ],
    );
  }
}

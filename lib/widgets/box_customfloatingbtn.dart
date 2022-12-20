import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:projet_box/views/box_create_interface.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  const CustomFloatingActionBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final BuildContext currentContext = Navigator.of(context).context;
    final Widget currentPage = currentContext.widget;

    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: boxGray,
      ),
      padding: const EdgeInsets.all(8),
      child: FloatingActionButton(
        foregroundColor: boxWhiteness,
        highlightElevation: 10,
        elevation: 1,
        onPressed: () => {
          if (currentPage is BoxCreateInterface)
            {debugPrint("Deja sur la page")}
          else
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxCreateInterface(),
                ),
              ),
            }
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: floatingBtnGradient,
            boxShadow: const [
              BoxShadow(
                color: Color(0xb2000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key, required this.icon,
    required this.onTap,
    this.isSelected = false,
  });
  final String icon;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 44,height: 44,
        child: Column(
          children: [
            SvgPicture.asset(icon),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: 21,
              height: 3,
              margin: const EdgeInsets.only(top: 6),
              decoration: isSelected ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ) : const BoxDecoration(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginButton extends StatelessWidget {
  final String image;
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 96,
        height: 52,
        // width: 96,
        // height: 52,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(29), right: Radius.circular(30)),
        ),
        child: SvgPicture.asset(
          fit: BoxFit.scaleDown,
          image,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}

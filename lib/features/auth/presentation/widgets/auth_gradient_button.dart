import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonName;
  const AuthGradientButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
          fixedSize: Size(
            width,
            55,
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

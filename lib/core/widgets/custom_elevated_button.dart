import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/values_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonColor,
    required this.title,
    required this.onPressed,
    this.style,
  });

  final Color buttonColor;
  final String title;
  final void Function() onPressed;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size(double.infinity, AppSize.s48),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              100,
            ),
          ),
        ),
      ),
      child: Text(
        title,
        style: style ??
            TextStyle(
              color: ColorManager.white,
              fontSize: FontSize.s16,
              fontWeight: FontWeightManager.bold,
            ),
      ),
    );
  }
}

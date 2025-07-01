import 'package:flutter/material.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/style_manager.dart';
import '../resources/theme_manager.dart';
import '../resources/values_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.obscureText,
    this.validator,
    this.suffix,
    this.keyboardType,
    this.enabled,
    this.prefixIcon,
    this.initialValue,
    this.onChanged,
    this.prefixStyle,
    this.hintStyle,
    this.borderSideColor,
    this.onTap,
  });

  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final String? initialValue;
  final bool? obscureText;
  final bool? enabled;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final TextStyle? prefixStyle;
  final TextStyle? hintStyle;
  final Color? borderSideColor;
  final void Function()? onTap;

  // final double borderRadius = AppSize.s5;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      readOnly: enabled ?? false,
      onTap: onTap,
      // enabled:enabled ,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffix != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    suffix!,
                  ],
                )
              : null,
          prefixStyle: prefixStyle,
          labelText: labelText,
          labelStyle: getRegularStyle(
            color: ColorManager.grey,
            fontSize: FontSize.s16,
          ),
          hintText: hintText,
          hintStyle: hintStyle ??
              getRegularStyle(
                color: ColorManager.placeHolderColor,
                fontSize: FontSize.s14,
              ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.all(AppPadding.p18),
          enabledBorder: outLintInputBorderMethod(
            BorderSide(
                color: borderSideColor ?? ColorManager.black,
                width: AppSize.w1_5),
            const BorderRadius.all(Radius.circular(AppSize.s5)),
          ),
          focusedBorder: outLintInputBorderMethod(
            BorderSide(
                color: borderSideColor ?? ColorManager.grey,
                width: AppSize.w1_5),
            const BorderRadius.all(Radius.circular(AppSize.s5)),
          ),
          errorBorder: outLintInputBorderMethod(
            BorderSide(
                color: borderSideColor ?? ColorManager.error,
                width: AppSize.w1_5),
            const BorderRadius.all(Radius.circular(AppSize.s5)),
          ),
          focusedErrorBorder: outLintInputBorderMethod(
            BorderSide(
                color: borderSideColor ?? ColorManager.error,
                width: AppSize.w1_5),
            const BorderRadius.all(Radius.circular(AppSize.s5)),
          ),
          disabledBorder: outLintInputBorderMethod(
            BorderSide(
                color: borderSideColor ?? ColorManager.grey,
                width: AppSize.w1_5),
            const BorderRadius.all(Radius.circular(AppSize.s5)),
          )),
      obscureText: obscureText ?? false,
      validator: validator,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}

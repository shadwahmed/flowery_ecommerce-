import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/utils/cashed_data_shared_preferences.dart';
import '../view_model/signup_view_model/signup_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseGender extends StatefulWidget {
  const ChooseGender({super.key, required this.viewModel});

  final RegisterViewModel viewModel;

  @override
  State<ChooseGender> createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender> {
  String? _selectedValue;
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.gender,
          style: getSemiBoldStyle(
              color: widget.viewModel.isSelectGender
                  ? Colors.redAccent
                  : ColorManager.grey,
              fontSize: AppSize.s18),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<String>(
              activeColor: ColorManager.pink,
              value: 'female',
              groupValue: _selectedValue,
              onChanged: (String? value) {
                setState(() {
                  widget.viewModel.isSelectGender = false;
                  widget.viewModel.isSelectGender2 = true;
                  _selectedValue = value;
                  _isActive = !_isActive;
                  CacheService.setData(
                      key: CacheConstants.selectGender, value: value);
                });
              },
            ),
            Text(
              AppLocalizations.of(context)!.female,
              style: getLightStyle(
                  color: _isActive ? ColorManager.black : ColorManager.grey,
                  fontSize: AppSize.s16),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<String>(
              activeColor: ColorManager.pink,
              value: 'male',
              groupValue: _selectedValue,
              onChanged: (String? value) {
                setState(() {
                  widget.viewModel.isSelectGender2 = true;
                  widget.viewModel.isSelectGender = false;
                  _selectedValue = value;
                  _isActive = !_isActive;
                  CacheService.setData(
                      key: CacheConstants.selectGender, value: value);
                });
              },
            ),
            Text(AppLocalizations.of(context)!.male,
                style: getLightStyle(
                    color: _isActive ? ColorManager.black : ColorManager.grey,
                    fontSize: AppSize.s16)),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}

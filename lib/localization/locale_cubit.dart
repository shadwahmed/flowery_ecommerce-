import '../core/utils/cashed_data_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en')) {
    _loadSavedLanguage();
  } // Default locale is English

  void changeLanguage(String languageCode) async {
    emit(Locale(languageCode));
    await CacheService.setData(
        key: CacheConstants.defaultLanguage, value: languageCode);
  }

  String changeFontFamily() {
    return state.languageCode == 'ar' ? 'NotoSansArabic' : 'Roboto';
  }

  void _loadSavedLanguage() {
    final savedLanguage =
        CacheService.getData(key: CacheConstants.defaultLanguage) ?? 'en';
    emit(Locale(savedLanguage));
  }
}

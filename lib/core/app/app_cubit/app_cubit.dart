import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storeapp/core/service/shared_pref/pref_keys.dart';
import 'package:storeapp/core/service/shared_pref/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
bool isDark =true;
String currentLangCode='en';
 Future <void >changeThemeMode({bool ?sharedMode})async {
    if (sharedMode != null) {
      isDark = sharedMode;
       emit(AppState.themechangemode(isDarkMode: isDark));
    }else{
      isDark = !isDark;
await SharedPref().setBoolean(PrefKeys.themeMode, isDark).then((value) =>emit(AppState.themechangemode(isDarkMode: isDark)));
      
    }  
  }
 //Language Change
  void getSavedLanguage() {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';

    currentLangCode = result!;

    emit(AppState.languagechange(locale: Locale(currentLangCode)));
  }

  Future<void> _changeLang(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLangCode = langCode;
    emit(AppState.languagechange(locale: Locale(currentLangCode)));
  }

  void toArabic() => _changeLang('ar');

  void toEnglish() => _changeLang('en');
}

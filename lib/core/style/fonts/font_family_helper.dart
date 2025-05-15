import 'package:storeapp/core/service/shared_pref/pref_keys.dart';
import 'package:storeapp/core/service/shared_pref/shared_pref.dart';

class FontFamilyHelper {
  static String cairoArabic = 'Cairo';
  static String poppinsEnglish = 'Poppins';

  static String geLocalozedFontFamily() {
    final currentLanguage = SharedPref().getString(PrefKeys.language);
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}

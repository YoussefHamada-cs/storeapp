class FontFamilyHelper {
  static String cairoArabic = 'Cairo';
  static String poppinsEnglish = 'Poppins';

  static String geLocalozedFontFamily() {
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:storeapp/core/style/colors/app_colors_dark.dart';
import 'package:storeapp/core/style/colors/app_colors_light.dart';
import 'package:storeapp/core/style/fonts/font_family_helper.dart';
import 'package:storeapp/core/theme/assets_extension.dart';
import 'package:storeapp/core/theme/color_extensions.dart';


ThemeData themeDark() {
  return ThemeData(
   
extensions: <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
    scaffoldBackgroundColor:ColorsDark.mainColor,
   textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}


ThemeData themeLight() {
  return ThemeData(
      
extensions: <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],

  scaffoldBackgroundColor: ColorsLight.mainColor,
   textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}

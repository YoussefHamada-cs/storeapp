import 'package:flutter/material.dart';
import 'package:storeapp/core/style/colors/app_colors_dark.dart';
import 'package:storeapp/core/style/colors/app_colors_light.dart';
import 'package:storeapp/core/theme/color_extensions.dart';
import 'package:storeapp/core/theme/images_extension.dart';

ThemeData themeDark() {
  return ThemeData(
   
extensions: <ThemeExtension<dynamic>>[AppColors.dark,MyImages.dark],
    scaffoldBackgroundColor: AppColorsDark.background
   
  );
}


ThemeData themeLight() {
  return ThemeData(
      
extensions: <ThemeExtension<dynamic>>[AppColors.light,MyImages.light],

    scaffoldBackgroundColor: AppColorsLight.background
   
  );
}

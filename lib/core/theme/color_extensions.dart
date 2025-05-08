import 'package:flutter/material.dart';
import 'package:storeapp/core/style/colors/app_colors_dark.dart';
import 'package:storeapp/core/style/colors/app_colors_light.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    this.background,
  });
  final Color? background;
  @override
  ThemeExtension<AppColors> copyWith({Color? background}) {
    return AppColors(
      background: background,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      background: background, 
    );
  }
  static const light = AppColors(
    background:AppColorsLight.background,
  );
  static const dark = AppColors(
    background: AppColorsDark.background,
  );
}

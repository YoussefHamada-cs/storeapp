import 'package:flutter/material.dart';
import 'package:storeapp/core/theme/color_extensions.dart';
import 'package:storeapp/core/theme/images_extension.dart';

extension ContextExt on BuildContext {
  //color
  AppColors get color => Theme.of(this).extension<AppColors>()!;
    // images
  MyImages get assets => Theme.of(this).extension<MyImages>()!;
}

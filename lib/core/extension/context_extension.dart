import 'package:flutter/material.dart';
import 'package:storeapp/core/languages/app_localizations.dart';
import 'package:storeapp/core/theme/assets_extension.dart';
import 'package:storeapp/core/theme/color_extensions.dart';


extension ContextExt on BuildContext {
  //color
  MyColors get color => Theme.of(this).extension<MyColors>()!;
    // images
  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;
  //Language
  String translate(String langkey) {
    return AppLocalizations.of(this)!.translate(langkey).toString();
  }

}

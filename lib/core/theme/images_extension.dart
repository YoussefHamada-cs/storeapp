import 'package:flutter/material.dart';
import 'package:storeapp/core/style/images/app_images.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({
    this.imagetest,
  });
  final String? imagetest;
  @override
  ThemeExtension<MyImages> copyWith({String? imagetest}) {
    return MyImages(
      imagetest: imagetest,
    );
  }

  @override
  ThemeExtension<MyImages> lerp(
    covariant ThemeExtension<MyImages>? other,
    double t,
  ) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(
      imagetest: imagetest, 
    );
  }
  static const light = MyImages(
    imagetest:AppImages.imageLighttest,
  );
  static const dark = MyImages(
    imagetest: AppImages.imagedarktest,
  );
}

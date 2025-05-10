import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/common/animations/animate_do.dart';
import 'package:storeapp/core/common/widgets/custom_linear_button.dart';
import 'package:storeapp/core/common/widgets/text_app.dart';
import 'package:storeapp/core/extension/context_extension.dart';
import 'package:storeapp/core/languages/lang_keys.dart';

class ThemeAndLangButtons extends StatelessWidget {
  const ThemeAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: Icon(Icons.light_mode_rounded, color: Colors.white),
          ),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            width: 100.w,
            height: 44.h,
            onPressed: () {},
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

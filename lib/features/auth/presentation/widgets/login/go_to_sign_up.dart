import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/common/widgets/text_app.dart';
import 'package:storeapp/core/extension/context_extension.dart';
import 'package:storeapp/core/languages/lang_keys.dart';

class GoToSignUp extends StatelessWidget {
  const GoToSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: TextApp(
        text: context.translate(LangKeys.createAccount),
        theme: context.textStyle.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,

          color: context.color.bluePinkLight,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/common/animations/animate_do.dart';
import 'package:storeapp/core/common/widgets/custom_linear_button.dart';
import 'package:storeapp/core/common/widgets/text_app.dart';
import 'package:storeapp/core/extension/context_extension.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        onPressed: onPressed,
        child: TextApp(
          text: text,
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

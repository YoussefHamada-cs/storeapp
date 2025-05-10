import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/common/widgets/text_app.dart';
import 'package:storeapp/core/extension/context_extension.dart';

class CustomButtonGoTo extends StatelessWidget {
  const CustomButtonGoTo({super.key, required this.onPressed, required this.text});
 final  void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TextApp(
        text: text,
        theme: context.textStyle.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,

          color: context.color.bluePinkLight,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/common/animations/animate_do.dart';
import 'package:storeapp/core/common/widgets/custom_text_field.dart';
import 'package:storeapp/core/extension/context_extension.dart';
import 'package:storeapp/core/languages/lang_keys.dart';
import 'package:storeapp/core/utils/app_regex.dart';

class LoginTextFrom extends StatefulWidget {
  const LoginTextFrom({super.key});

  @override
  State<LoginTextFrom> createState() => _LoginTextFromState();
}

class _LoginTextFromState extends State<LoginTextFrom> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              hintText: context.translate(LangKeys.email),

              prefixIcon: Icon(Icons.email),
              controller: TextEditingController(),
              validator: (p0) {
                if (AppRegex.isEmailValid('')) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 20.h),
          CustomFadeInLeft(
            duration: 200,
            child: CustomTextField(
              hintText: context.translate(LangKeys.password),
              prefixIcon: Icon(Icons.lock),
              overrideValidator: isShowPassword,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword ? Icons.visibility_off : Icons.visibility,
                  color: context.color.textColor,
                ),
              ),
              obscureText: true,
              controller: TextEditingController(),
              validator: (p0) {
                if (AppRegex.isPasswordValid('')) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}

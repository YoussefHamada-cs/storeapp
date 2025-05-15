import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/app_router/app_routes.dart';

import 'package:storeapp/core/extension/context_extension.dart';
import 'package:storeapp/core/languages/lang_keys.dart';
import 'package:storeapp/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:storeapp/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:storeapp/features/auth/presentation/widgets/custom_button_go_to.dart';

import 'package:storeapp/features/auth/presentation/widgets/login/login_text_from.dart';
import 'package:storeapp/features/auth/presentation/widgets/theme_and_lang_buttons.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          children: [
            const ThemeAndLangButtons(),
            SizedBox(height: 50.h),
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(height: 30.h),
            const LoginTextFrom(),
            SizedBox(height: 30.h),
            CustomAuthButton (onPressed: () {  }, text: context.translate(LangKeys.login),),
            SizedBox(height: 30.h),
            CustomButtonGoTo(onPressed: () {context.pushReplacementNamed(AppRoutes.signUp);  }, text: context.translate(LangKeys.createAccount),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/extension/context_extension.dart';
import 'package:storeapp/core/languages/lang_keys.dart';
import 'package:storeapp/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:storeapp/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:storeapp/features/auth/presentation/widgets/custom_button_go_to.dart';
import 'package:storeapp/features/auth/presentation/widgets/sign_up/sign_up_text_from.dart';
import 'package:storeapp/features/auth/presentation/widgets/sign_up/user_avater.dart';
import 'package:storeapp/features/auth/presentation/widgets/theme_and_lang_buttons.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/app_router/app_routes.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 17.w),
        child: Column(
          children: [
            ThemeAndLangButtons(),
            SizedBox(height: 30.h),

            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            SizedBox(height: 17.h),
            UserAvater(),
            SizedBox(height: 17.h),
            SignUpTextFrom(),
            SizedBox(height: 17.h),
            CustomAuthButton(
              onPressed: () {},
              text: context.translate(LangKeys.login),
            ),
            CustomButtonGoTo(
              onPressed: () {
                context.pushReplacementNamed(AppRoutes.login);
              },
              text: context.translate(LangKeys.youHaveAccount),
            ),
          ],
        ),
      ),
    );
  }
}

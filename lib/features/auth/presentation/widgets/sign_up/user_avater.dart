import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/common/animations/animate_do.dart';
import 'package:storeapp/core/style/images/app_images.dart';

class UserAvater extends StatelessWidget {
  const UserAvater({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: CircleAvatar(
        radius: 38.r,
        
        backgroundImage: AssetImage(AppImages.userAvatar),
      ),
    );
  }
}
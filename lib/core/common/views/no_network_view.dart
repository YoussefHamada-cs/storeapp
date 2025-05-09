import 'package:flutter/material.dart';
import 'package:storeapp/core/style/images/app_images.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.noNetwork),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

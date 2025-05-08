import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/app_router/app_routes.dart';
import 'package:storeapp/core/extension/context_extension.dart';
import 'package:storeapp/core/languages/lang_keys.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate(LangKeys.appName )),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Detail'),
          onPressed: () {
            context.pushNamed(AppRoutes.detail);
          },
        ),
      ),
    );
  }
}
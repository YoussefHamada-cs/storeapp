import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/app_router/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
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
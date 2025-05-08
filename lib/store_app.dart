import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/app/connactivity_controller.dart';
import 'package:storeapp/core/app_router/app_router.dart';
import 'package:storeapp/core/languages/app_localizations_setup.dart';
import 'package:storeapp/core/theme/app_theme.dart';
import 'package:storeapp/core/views/no_network_view.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: AppRouter().router,
              theme: themeDark(),
              locale: Locale('ar'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              builder: (context, child) {
                return GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  
                  child: Scaffold(
                    body: Builder(
                      builder: (context) {
                        ConnectivityController.instance.init();
                        return child!;
                      },
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return MaterialApp(home: NoNetworkView());
        }
      },
    );
  }
}

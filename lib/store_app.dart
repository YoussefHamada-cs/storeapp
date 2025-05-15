import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeapp/core/app/app_cubit/app_cubit.dart';
import 'package:storeapp/core/app/connactivity_controller.dart';
import 'package:storeapp/core/app_router/app_router.dart';
import 'package:storeapp/core/di/injection_container.dart';
import 'package:storeapp/core/languages/app_localizations_setup.dart';
import 'package:storeapp/core/service/shared_pref/pref_keys.dart';
import 'package:storeapp/core/service/shared_pref/shared_pref.dart';
import 'package:storeapp/core/theme/app_theme.dart';
import 'package:storeapp/core/common/views/no_network_view.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, value, child) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeThemeMode(
                  sharedMode: SharedPref().getBoolean(PrefKeys.themeMode))..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) => previous!= current,
                builder: (context, state) {
                  final cubit =context.read<AppCubit>();
                  return MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    routerConfig: AppRouter().router,
                    theme:cubit.isDark? themeLight(): themeDark(),
                    locale: Locale(cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    builder: (context, child) {
                      return GestureDetector(
                        onTap: () =>
                            FocusManager.instance.primaryFocus?.unfocus(),
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
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(home: NoNetworkView());
        }
      },
    );
  }
}

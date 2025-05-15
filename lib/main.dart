import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:storeapp/core/app/env_variables.dart';
import 'package:storeapp/core/di/injection_container.dart';
import 'package:storeapp/firebase_options.dart';
import 'package:storeapp/store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/core/app/bloc_observer.dart';
import 'package:storeapp/core/service/shared_pref/shared_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(EnvType.dev);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = AppBlocObserver();
  await SharedPref().instantiatePreferences();
  await setupInjector();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const StoreApp());
  });
}

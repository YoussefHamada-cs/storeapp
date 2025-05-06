import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
   ConnectivityController._();
   static final ConnectivityController instance = ConnectivityController._();
   ValueNotifier<bool> isOnline = ValueNotifier(true);
   Future<void> init() async {
    final  connectivityResult = await Connectivity().checkConnectivity();
isCheckConnection(connectivityResult as ConnectivityResult? );
Connectivity().onConnectivityChanged.listen(isCheckConnection as void Function(List<ConnectivityResult> event)?);
   }
bool isCheckConnection(ConnectivityResult? connectivityResult) {
    final connectivityResult = Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      isOnline.value = false;
      // No internet connection
      return false;
    }else if(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi){
      isOnline.value = true;
      return true;
    }
    
     else {
      // Internet connection available
      return false;
    } 
   }
}

import 'package:agricultural_project/ui/Screens/CliantRegistration.dart';
import 'package:agricultural_project/ui/Screens/HomePage.dart';
import 'package:agricultural_project/ui/Screens/Register.dart';
import 'package:agricultural_project/ui/Screens/Splash.dart';
import 'package:agricultural_project/ui/Screens/StoreRegistration.dart';
import 'package:agricultural_project/ui/Screens/adsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );
  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: SplashPage(),
     // home: AdsPage(),
   //home: StoreRegistration(),
  // home: CliantRegistration(),
  //home: RegisterPage(),


       localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.locale, // Active locale
      supportedLocales: translator.locals(),
    );
  }
}

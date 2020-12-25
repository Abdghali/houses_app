import 'package:agricultural_project/utilities/CustomNewStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:splashscreen/splashscreen.dart';

import 'HomePage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360.0, height: 640.0);
    // Future.delayed(Duration(seconds: 6)).then((value) { Get.off(HomePage());});
    return SplashScreen(
        seconds: 6,
         navigateAfterSeconds: new HomePage(),
        title: Text(
          translator.translate('maldives_home_store'),
          style: CustomNewStyle.splashScreenTextBouldStyle(),
        ),
        image: Image.asset('assets/images/logo.jpg'),
        backgroundColor: Colors.white,
        loadingText: Text(translator.translate("welcome")),
        styleTextUnderTheLoader: CustomNewStyle.splashScreenTextNormalStyle(),
        photoSize: 100.0,
        onClick: () {
          translator.setNewLanguage(context,
              newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
              restart: true,
              remember: true);
        },
        loaderColor: Colors.red);
  }
}

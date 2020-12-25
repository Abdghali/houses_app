import 'package:agricultural_project/utilities/CustomNewStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360.0, height: 640.0);
    return Container(
      child: Scaffold(
        //Todo custom appBar
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            translator.translate('Registration'),
            style: CustomNewStyle.customNewAppBarStyle(),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                )),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}

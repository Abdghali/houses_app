import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360.0, height: 640.0);
    return Container(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            height: 300.h,
            width: 200.w,
            child: Text("HomePage"),
          ),
        ),
      ),
    );
  }
}

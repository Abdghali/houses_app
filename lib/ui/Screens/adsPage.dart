import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsPage extends StatefulWidget {
  @override
  _AdsPageState createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360.0, height: 640.0);
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ImageCustomContainer(),
              flex: 4,
            ),
            Expanded(
              child: CustomButtonContainer(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 70.h,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/home1.jfif',
                  ),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: 470.h,
              width: 340.w,
            ),
          ),
        ],
      ),

      ///
    );
  }
}

class CustomButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Container(
              height: 60.h,
              //  color: Colors.yellow,
              padding: EdgeInsets.only(left: 10.w),
              width: 160.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.chat), onPressed: null),
                  IconButton(icon: Icon(Icons.call), onPressed: null),
                  IconButton(icon: Icon(Icons.language), onPressed: null),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 60.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Icon(
                Icons.subdirectory_arrow_right_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:agricultural_project/ui/Screens/CliantRegistration.dart';
import 'package:agricultural_project/ui/Screens/StoreRegistration.dart';
import 'package:agricultural_project/utilities/CustomNewStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })),

        body: Column(
          children: [
            Expanded(flex: 1, child: CustomContainer1()),
            Expanded(
                flex: 4,
                child: Container(
                  child: CustomNewContainer2(),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: ListTile(
            title: Text(translator.translate('NewUser')),
            subtitle: Text(
                translator.translate('You_can_register_for_free_membership')),
          ),
        ),
      ),
    );
  }
}

class CustomNewContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: InkWell(
                onTap: () => Get.to(StoreRegistration()),
                child: Container(
                  padding: EdgeInsets.all(30.w),
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(2.0, 0.5),
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Icon(
                        Icons.store_mall_directory_outlined,
                        size: 60.w,
                      ),
                      Text(translator.translate("Stores")),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => Get.to(CliantRegistration()),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(30.w),
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 0.1),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(2.0, 0.5),
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Icon(
                        Icons.people_alt_outlined,
                        size: 50.w,
                      ),
                      Text(translator.translate("Customers")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:agricultural_project/utilities/CustomNewStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class StoreRegistration extends StatefulWidget {
  @override
  _StoreRegistrationState createState() => _StoreRegistrationState();
}

class _StoreRegistrationState extends State<StoreRegistration> {
  GlobalKey<FormState> formKey = GlobalKey();
  String companyName;
  String userName;
  String password;
  String email;
  String phoneNumber;
  String storeLogo;
  String coumpanyActivity;
  saveForm() {
    bool validationResult = formKey.currentState.validate();
    if (validationResult) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  saveCoumpanyActivity(coumpanyActivityValue) {
    this.coumpanyActivity = coumpanyActivityValue;
  }

  saveStoreLogo(storeLogo) {
    this.storeLogo = storeLogo;
  }

  savePhoneNumber(newPhoneNumber) {
    this.phoneNumber = newPhoneNumber;
  }

  saveEmail(newEmail) {
    this.email = newEmail;
  }

  savePassword(newPassword) {
    this.password = newPassword;
  }

  saveUserName(newUserName) {
    this.userName = newUserName;
  }

  saveCompanyName(newCompanyName) {
    this.companyName = newCompanyName;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360.0, height: 640.0);
    return Container(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              translator.translate('StoreRegistration'),
              style: CustomNewStyle.customNewAppBarStyle(),
            ),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
            //   color: Colors.blue[200],
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomContainer1(),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "CompanyName",
                    containIcon: false,
                    saveFunction: saveCompanyName,
                  ),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "UserName",
                    containIcon: false,
                    saveFunction: saveUserName,
                  ),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "Password",
                    containIcon: false,
                    saveFunction: savePassword,
                  ),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "Email",
                    containIcon: false,
                    saveFunction: saveEmail,
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.location_on, color: Colors.blue),
                          onPressed: null),
                      Text(translator.translate('Select_a_moving_site')),
                    ],
                  ),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "PhoneNumber",
                    containIcon: false,
                    saveFunction: saveStoreLogo,
                  ),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "StoreLogo",
                    containIcon: false,
                    saveFunction: saveStoreLogo,
                  ),
                  SizedBox(height: 10),
                  CutomNewTextFormField(
                    labelTextValue: "CoumpanyActivity",
                    containIcon: true,
                    saveFunction: saveCoumpanyActivity,
                    icon: Icon(Icons.upload_outlined),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 300.w,
                    height: 45.h,
                    child: RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          translator.translate('Submit'),
                          style: CustomNewStyle.customNewButtonStyle(),
                        ),
                        onPressed: () {
                          saveForm();
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(Icons.store_mall_directory_outlined),
          Text(translator.translate('StoreRegistration'))
        ],
      ),
      subtitle:
          Text(translator.translate('You_can_register_your_store_from_here')),
    );
  }
}

class CutomNewTextFormField extends StatefulWidget {
  Function saveFunction;
  String labelTextValue;
  Icon icon;
  bool containIcon;
  CutomNewTextFormField(
      {this.labelTextValue, this.saveFunction, this.icon, this.containIcon});
  @override
  _CutomNewTextFormFieldState createState() => _CutomNewTextFormFieldState();
}

class _CutomNewTextFormFieldState extends State<CutomNewTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: (value) {
          if (value == null || value == "") {
            return "required";
          }
        },
        onSaved: (newValue) => widget.saveFunction(newValue),
        decoration: InputDecoration(
          labelText: translator.translate(widget.labelTextValue),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          suffixIcon: widget.containIcon
              ? CustomNewButton(
                  icon: Icon(
                    Icons.upload_outlined,
                    color: Colors.white,
                  ),
                )
              : Container(height: 0, width: 0),
        ),
      ),
    );
  }
}

class CustomNewButton extends StatelessWidget {
  Icon icon;
  CustomNewButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: icon,
    );
  }
}

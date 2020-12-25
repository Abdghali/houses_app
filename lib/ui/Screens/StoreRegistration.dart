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
          child: Column(
            children: [
              CustomContainer1(),
              CustomContainer2(),
            ],
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

class CustomContainer2 extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  String userName;
  saveForm() {
    bool validationResult = formKey.currentState.validate();
    if (validationResult) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
      //   color: Colors.blue[200],
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  labelText: translator.translate('CompanyName'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  labelText: translator.translate('UserName'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  labelText: translator.translate('Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  labelText: translator.translate('Email'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
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
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  labelText: translator.translate('PhoneNumber'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  labelText: translator.translate('StoreLogo'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value == null || value == "") {
                    return "required";
                  }
                },
                onSaved: (newValue) {
                  this.userName = newValue;
                },
                decoration: InputDecoration(
                  suffixIcon: Container(
                      width: 60.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.upload_outlined)),
                  labelText: translator.translate('CoumpanyActivity'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Submit"),
                  onPressed: () {
                    saveForm();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:agricultural_project/utilities/CustomNewStyle.dart';
import 'package:flutter/material.dart';

class CustomNewAppBar extends StatefulWidget {
  String title;
  CustomNewAppBar(this.title);

  @override
  _CustomNewAppBarState createState() => _CustomNewAppBarState();
}

class _CustomNewAppBarState extends State<CustomNewAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        widget.title,
        style: CustomNewStyle.customNewAppBarStyle(),
      ),
    );
  }
}

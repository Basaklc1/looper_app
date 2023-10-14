import 'package:flutter/material.dart';
import 'package:looper_app/constant/constant.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  String appBarTitle;
  CustomAppbar({Key? key, this.appBarTitle = 'looper'})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Constant.black,
    );
  }
}

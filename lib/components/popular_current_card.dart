import 'package:flutter/material.dart';
import 'package:looper_app/model/current.dart';

import '../assets.dart';
import '../constant/constant.dart';

class PopularCurrentCard extends StatelessWidget {
  Current current;
  PopularCurrentCard({required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff171717), Color(0xff101010), Color(0xff0f0f0f)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.2, 0.3]),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Color(0xff272525))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                  width: 100,
                  child: Text(
                    current.current,
                    style: TextStyle(
                        fontSize: 16,
                        color: Constant.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${current.count} M kişi katıldı",
                    style: TextStyle(
                        color: Constant.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  Image.asset(Assets.icons.arrowiconPNG)
                ],
              ),
            )
          ]),
    );
  }
}

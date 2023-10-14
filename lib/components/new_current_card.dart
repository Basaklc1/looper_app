import 'package:flutter/material.dart';
import 'package:looper_app/constant/constant.dart';
import 'package:looper_app/model/current.dart';

class NewCurrentCard extends StatelessWidget {
  Current current;
  NewCurrentCard({required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(left: 10, right: 5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff171717),
                Color(0xff171616),
                Color(0xff101010),
                Color(0xff0f0f0f)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.2, 0.3, 0.4]),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Color(0xff272525))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              current.current,
              style: TextStyle(
                  fontSize: 16,
                  color: Constant.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "${current.count} M kişi katıldı",
            style: TextStyle(color: Constant.grey, fontSize: 12),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: 105,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Constant.black, borderRadius: BorderRadius.circular(15)),
            child: Text(
              "Katıl",
              style:
                  TextStyle(color: Constant.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

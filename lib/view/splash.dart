import 'package:flutter/material.dart';
import 'package:looper_app/view/categories.dart';
import '../assets.dart';
import '../constant/constant.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xff242424),
              Color(0xff040404),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
          child: Column(children: [
            Expanded(
              flex: 3,
              child: Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Image.asset(Assets.images.looperPNG),
                      ),
                      Container(
                        width: 120,
                        child: Image.asset(
                          Assets.images.ellipsePNG,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 22),
                    width: 300,
                    child: Text("Tüm arkadaşların aynı anda yayınlıyor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesPage()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                            right: 90,
                          ),
                          width: MediaQuery.of(context).size.width / 1.5,
                          padding: EdgeInsets.only(left: 30),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Constant.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Text(
                                "Yayınlamaya Başla",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.black),
                              ),
                              Image.asset(
                                'assets/icons/Cursor_Click.png',
                                width: 40,
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

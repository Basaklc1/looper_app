import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:looper_app/view/discover_page.dart';
import 'package:looper_app/view/home/home.dart';
import 'package:looper_app/view/message_page.dart';

import '../assets.dart';
import '../constant/constant.dart';
import '../view/base_scaffold.dart';

class CustomBottomNavBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffoldRiverpod);
    var read = ref.read(baseScaffoldRiverpod);
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: const BoxDecoration(
          color: Constant.black,
          border: Border(top: BorderSide(width: 0.5, color: Color(0xff393939))),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                bottom: 30,
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiscoverPage()));
                    },
                    child: Image.asset(Assets.icons.pointericonPNG))),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Image.asset(Assets.icons.homePNG)),
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MessagePage()));
                          },
                          child: Image.asset(Assets.icons.commentPNG)),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < read.items.length; i++)
                      InkWell(
                        onTap: () {
                          read.setCurrentIndex(i);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              read.items[i].title,
                              style: TextStyle(
                                  color: i == watch.currentIndex
                                      ? Constant.green
                                      : Constant.grey),
                            )
                          ],
                        ),
                      ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:looper_app/assets.dart';
import 'package:looper_app/constant/constant.dart';
import '../model/home_post.dart';

class ListViewPostCard extends StatefulWidget {
  HomePost post;
  ListViewPostCard({required this.post});

  @override
  State<ListViewPostCard> createState() => _ListViewPostCardState();
}

class _ListViewPostCardState extends State<ListViewPostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    runSpacing: 5.0,
                    children: [
                  Image.asset(widget.post.profilePhoto),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4,
                      left: 8,
                    ),
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text(
                          widget.post.name,
                          style: TextStyle(
                              fontSize: 18,
                              color: Constant.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Türkiye 16 saat önce",
                          style: TextStyle(
                              fontSize: 12,
                              color: Constant.grey,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )
                ])),
            Image.asset(
              Assets.icons.morePNG,
            ),
          ]),
        ),
        SizedBox(height: 15),
        Stack(
          children: [
            Container(
              width: 400,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  widget.post.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: Image.asset(Assets.icons.photoiconPNG),
            ),
            Positioned(
                top: 20,
                right: 20,
                child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 5, color: Constant.green)),
                    width: 110,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          Assets.images.pppPNG,
                          fit: BoxFit.cover,
                        ))))
          ],
        )
      ],
    ));
  }
}

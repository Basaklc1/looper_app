import 'package:flutter/material.dart';
import 'package:looper_app/assets.dart';
import 'package:looper_app/components/list_view_post_card.dart';
import 'package:looper_app/model/home_post.dart';

import '../../components/custom_bottom_nav_bar.dart';
import '../../constant/constant.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavBar(),
          appBar: AppBar(
              backgroundColor: Constant.black,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'looper',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Padding(
                padding: EdgeInsets.all(1),
                child: IconButton(
                  icon: Image.asset(
                    Assets.icons.menuPNG,
                    fit: BoxFit.cover,
                    height: 90,
                  ),
                  onPressed: () {},
                ),
              ),
              actions: [
                Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Padding(
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            Assets.icons.notificationPNG,
                            fit: BoxFit.cover,
                            height: 90,
                          ),
                        )))
              ]),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [homePosts()],
          )),
    );
  }

  Widget homePosts() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: posts
            .map(
              (post) => ListViewPostCard(post: post),
            )
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:looper_app/components/new_current_card.dart';
import 'package:looper_app/components/popular_current_card.dart';
import 'package:looper_app/model/discover_currents_model.dart';
import 'package:looper_app/riverpod/discover_riverpod.dart';

import '../components/custom_bottom_nav_bar.dart';
import '../constant/constant.dart';

final discoverRiverpod = ChangeNotifierProvider((ref) => DiscoverRiverpod());

class DiscoverPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(discoverRiverpod);
    var read = ref.read(discoverRiverpod);
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomBottomNavBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    width: 340,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Column(children: [
                      Text(
                        'Akımları keşfedin, katılın ya da siz bir akım başlatın ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Constant.white,
                        ),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                          onTap: () {},
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Constant.green,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Akım Başlat",
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
                          )),
                    ]),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  child: discoverCurrents(read.newTrends),
                ),
                SizedBox(height: 40),
                Container(child: discoverPopularCurrents(read.popularTrends))
              ],
            ),
          )),
    );
  }

  Widget discoverCurrents(DiscoverCurrentsModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            child: Text(
              model.currentTitle,
              style: TextStyle(
                  fontSize: 18,
                  color: Constant.grey,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: model.currents.length,
            padding: EdgeInsets.only(left: 5),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return NewCurrentCard(current: model.currents[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget discoverPopularCurrents(DiscoverCurrentsModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Container(
            child: Text(
              model.currentTitle,
              style: TextStyle(
                  fontSize: 18,
                  color: Constant.grey,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
          child: SizedBox(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: model.currents.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 100,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 25,
              ),
              itemBuilder: (context, index) {
                return PopularCurrentCard(current: model.currents[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

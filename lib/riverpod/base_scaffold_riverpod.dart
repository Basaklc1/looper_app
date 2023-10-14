import 'package:flutter/material.dart';
import 'package:looper_app/assets.dart';
import 'package:looper_app/model/bottom_nav_bar_model.dart';
import 'package:looper_app/view/discover_page.dart';
import 'package:looper_app/view/home/home.dart';
import 'package:looper_app/view/message_page.dart';



class BaseScaffoldRiverpod extends ChangeNotifier{
List<BottomNavBarModel> items =[
  BottomNavBarModel( title: "Anasayfa"),
  BottomNavBarModel( title: "Keşfet"),
  BottomNavBarModel(title: "Mesajlar"),
];
int currentIndex =0;

void setCurrentIndex(int index){
  currentIndex = index;
  notifyListeners();
}


}

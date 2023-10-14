import 'package:flutter/material.dart';
import 'package:looper_app/constant/constant.dart';
import '../components/category_card.dart';
import '../model/category.dart';
import 'home/home.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.black,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'looper',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10),
            child: TextButton(
              child: Text(
                "Geç",
                style: TextStyle(
                    fontSize: 16,
                    color: Constant.green,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Constant.darkblack,
            ),
          ),
          splashCategories(),
        ],
      ),
    );
  }

  Widget splashCategories() {
    return Container(
      width: 400,
      height: 800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text("En az 5 tane ilgi alanı seçin",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(height: 40),
          Wrap(
            direction: Axis.horizontal,
            spacing: 15.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: categoryList
                .map(
                  (category) => CategoryCard(category: category),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

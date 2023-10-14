import 'package:flutter/material.dart';
import 'package:looper_app/constant/constant.dart';
import 'package:looper_app/model/category.dart';

class CategoryCard extends StatefulWidget {
  Category category;
  CategoryCard({required this.category});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        label: Text(widget.category.category),
        labelStyle: TextStyle(
          fontSize: 18,
          color: _isSelected ? Constant.black : Constant.white,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Constant.darkblack,
        selected: _isSelected,
        selectedColor: Constant.green,
        showCheckmark: false,
        padding: EdgeInsets.only(top: 12, bottom: 12, left: 5, right: 5),
        avatar: Image.asset(widget.category.image),
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Constant.grey,
            width: 1.0,
          ),
        ));
  }
}

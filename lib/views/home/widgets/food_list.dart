import 'package:delivery/constants/constants.dart';
import 'package:delivery/constants/uidata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (index) {
          var food = foods[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 200.h, width: 150.w, color: kSecondary),
          );
        }),
      ),
    );
  }
}

import 'package:demo/common/app_style.dart';
import 'package:demo/common/reusable_text.dart';
import 'package:demo/constants/constants.dart';
import 'package:demo/constants/uidata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,

        title: ReusableText(text:"All Categories",
        style:appStyle(12, kGray, FontWeight.w600)),
      ),
      body: Container(
        padding: EdgeInsets.only(left:12.w, top:10.h),
        height: hieght,
        child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(categories.length, (i) {
          var category = categories[i];
          return ListTile(
            leading:CircleAvatar(
              radius: 18.r,
              backgroundColor: kGrayLight,
              child:Image.network(category["imageUrl"], fit: BoxFit.contain,),
            ),
            title: ReusableText(text:category['title'],
            style: appStyle(12, kGray, FontWeight.normal)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: kGray,
              size: 15.r,
            ),
          );
        }),
      ),
        
      ),
    );
  }
}
import 'package:demo/common/app_style.dart';
import 'package:demo/common/reusable_text.dart';
import 'package:demo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        width: width,
        height: 110.h,
        color: kOffWhite,
        child: Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor: kSecondary,
                      backgroundImage: const NetworkImage(
                          'https://scontent.fsgn5-13.fna.fbcdn.net/v/t39.30808-6/426565295_718904967073323_7873619382949730128_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=QhN35ksUSU8Q7kNvgEoF5YK&_nc_ht=scontent.fsgn5-13.fna&oh=00_AYB5eg3bq4Jc_j0te82lIwpOBN3t93tWVfnGUij6EoR_hw&oe=664FD2FD'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                              text: "Deliver to",
                              style: appStyle(13, kSecondary, FontWeight.w600)),
                          SizedBox(
                            width: width * 0.65,
                            child: Text("16768 21st Ave N, Plymouth, MN 55447",
                                overflow: TextOverflow.ellipsis,
                                style: appStyle(
                                    11, kGrayLight, FontWeight.normal)),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "❄️",
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ],
            )));
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 0 && hour < 12) {
      return '';
    } else if (hour >= 12 && hour < 16) {
      return '';
    } else {}
  }
}

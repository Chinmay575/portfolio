import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
      // color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Built with ",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              SizedBox(
                width: 8.w,
              ),
              Brand(
                Brands.flutter,
                size: 35.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset(
                "assets/images/WebAssembly.svg",
                height: 35.h,
                width: 35.h,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            "© ${DateTime.now().year} Chinmay Singh Modak. All rights reserved.",
            style: TextStyle(color: Colors.grey[500], fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}

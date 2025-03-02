import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 40.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      child: NeuContainer(
        height: 100.h,
        width: 1920.w,
        color: Colors.grey.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: GoogleFonts.poppins(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Journey",
                style: GoogleFonts.poppins(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Projects",
                style: GoogleFonts.poppins(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            NeuIconButton(
              enableAnimation: true,
              icon: const Icon(EvaIcons.sun),
              buttonHeight: 50.h,
              buttonWidth: 50.h,
              borderRadius: BorderRadius.circular(10.r),
            ),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}

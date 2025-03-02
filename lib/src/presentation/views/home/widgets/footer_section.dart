import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      // color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Built with ",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                width: 8,
              ),
              Brand(
                Brands.flutter,
                size: 35,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                "assets/images/WebAssembly.svg",
                height: 35,
                width: 35,
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            "© ${DateTime.now().year} Chinmay Singh Modak. All rights reserved.",
            style: TextStyle(color: Colors.grey[500], fontSize: 12),
          ),
        ],
      ),
    );
  }
}

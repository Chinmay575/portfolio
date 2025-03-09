import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      // color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Built with ",
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Brand(
                Brands.flutter,
                size: 35,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "+",
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                "assets/images/WebAssembly.svg",
                height: 35,
                width: 35,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "© ${DateTime.now().year} Chinmay Singh Modak. All rights reserved.",
            style: const TextStyle(
              // color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

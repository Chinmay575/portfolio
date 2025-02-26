import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MobileFrame extends StatefulWidget {
  const MobileFrame({super.key});

  @override
  State<MobileFrame> createState() => _MobileFrameState();
}

class _MobileFrameState extends State<MobileFrame> {
  late double deviceHeight, deviceWidth;
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight,
      width: deviceWidth * 0.25,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        // color: Colors.black,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: body(),
      ),
    );
  }

  Widget body() {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: deviceHeight - 70,
            width: deviceWidth * 0.25 - 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom:  Radius.circular(20),
              ),
              
            ),
            child: content(),
          ),
        ),
        Positioned(
          top: 0,
          // height: 30,
          child: Container(
            height: 30,
            width: deviceWidth * 0.25 - 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Text(
                  DateFormat('hh:mm').format(DateTime.now()),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.end,
                ),
                const Expanded(
                    child: SizedBox(
                  width: 10,
                )),
                const Icon(Icons.wifi),
                const Icon(Icons.network_cell),
                const Icon(Icons.network_cell),
                const Icon(Icons.battery_5_bar)
              ],
            ),
          ),
        ),
        // Camera
        Positioned(
          top: 10,
          left: 10,
          child: Center(
            child: Material(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          // left: 10,
          width: deviceWidth * 0.25 - 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: deviceHeight * 0.005,
                width: deviceWidth * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(deviceWidth)),
              ),
              Container(
                height: deviceHeight * 0.005,
                width: deviceWidth * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(deviceWidth)),
              ),
              Container(
                height: deviceHeight * 0.005,
                width: deviceWidth * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(deviceWidth)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget content() {
    return Container();
  }
}

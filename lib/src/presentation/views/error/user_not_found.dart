import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portfolio/src/utils/routes.dart';

class UserNotFoundPage extends StatefulWidget {
  const UserNotFoundPage({super.key});

  @override
  State<UserNotFoundPage> createState() => _UserNotFoundPageState();
}

class _UserNotFoundPageState extends State<UserNotFoundPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Looks like ${ModalRoute.of(context)?.settings.name?.split('/').last} is not registered ",
              style: GoogleFonts.poppins(fontSize: 50, color: Colors.black),
              softWrap: true,
            ),
            const SizedBox(
              height: 50,
            ),
            NeuTextButton(
              enableAnimation: true,
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.register);
              },
              borderRadius: BorderRadius.circular(10),
              text: Text(
                "Register",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

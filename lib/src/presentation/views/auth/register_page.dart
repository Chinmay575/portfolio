import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NeuCard(
          // color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(10),
          cardHeight: 500,
          cardWidth: 500,
          cardColor: Colors.grey.shade700,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Create an account",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Already have an account?"),
                      TextSpan(text: "Login"),
                    ],
                  ),
                ),
                NeuTextButton(
                  buttonWidth: double.maxFinite,
                  enableAnimation: true,
                  borderRadius: BorderRadius.circular(10),
                  text: Text("Continue with Google"),
                ),
                NeuTextButton(
                  buttonWidth: double.maxFinite,
                  enableAnimation: true,
                  borderRadius: BorderRadius.circular(10),
                  text: Text("Continue with Github"),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      indent: 16,
                      endIndent: 16,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      indent: 16,
                      endIndent: 16,
                    )),
                  ],
                ),
                NeuContainer(
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                  ),
                ),
                NeuTextButton(
                  buttonWidth: double.maxFinite,
                  enableAnimation: true,
                  borderRadius: BorderRadius.circular(10),
                  text: Text("Create an account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

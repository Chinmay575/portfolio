// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.expKey,
    required this.projectKey,
  });

  final GlobalKey expKey;
  final GlobalKey projectKey;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, size) {
        if (size.maxWidth < 800) {
          return _SmallTopBar(
            expKey: expKey,
            projectKey: projectKey,
          );
        } else {
          return _LargeTopBar(
            expKey: expKey,
            projectKey: projectKey,
          );
        }
      },
    );
  }
}

class _LargeTopBar extends StatelessWidget {
  const _LargeTopBar({
    required this.expKey,
    required this.projectKey,
  });

  final GlobalKey expKey;
  final GlobalKey projectKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: NeuContainer(
        height: 100,
        width: double.infinity,
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ..._buttons(expKey, projectKey),
            _darkModeButton(),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _SmallTopBar extends StatefulWidget {
  final GlobalKey expKey;
  final GlobalKey projectKey;
  const _SmallTopBar({
    Key? key,
    required this.expKey,
    required this.projectKey,
  }) : super(key: key);

  @override
  State<_SmallTopBar> createState() => _SmallTopBarState();
}

class _SmallTopBarState extends State<_SmallTopBar> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: NeuContainer(
        height: (isMenuOpen) ? 300 : 100,
        borderRadius: BorderRadius.circular(10),
        width: double.infinity,
        color: Colors.grey.shade800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NeuIconButton(
                  enableAnimation: true,
                  icon: const Icon(EvaIcons.menu),
                  buttonHeight: 50,
                  buttonWidth: 50,
                  borderRadius: BorderRadius.circular(10),
                  onPressed: () {
                    isMenuOpen = !isMenuOpen;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                _darkModeButton(),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            Visibility(
              visible: isMenuOpen,
              child: Column(
                children: _buttons(widget.expKey, widget.projectKey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _buttons(expKey, proKey) => [
      TextButton(
        onPressed: () {},
        child: Text(
          "Home",
          style: GoogleFonts.poppins(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
        width: 20,
      ),
      TextButton(
        onPressed: () {
          Scrollable.ensureVisible(expKey.currentContext!);
        },
        child: Text(
          "Journey",
          style: GoogleFonts.poppins(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
        width: 20,
      ),
      TextButton(
        onPressed: () {
          Scrollable.ensureVisible(proKey.currentContext!);
        },
        child: Text(
          "Projects",
          style: GoogleFonts.poppins(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
        width: 20,
      ),
    ];

Widget _darkModeButton() {
  return NeuIconButton(
    enableAnimation: true,
    icon: const Icon(EvaIcons.sun),
    buttonHeight: 50,
    buttonWidth: 50,
    borderRadius: BorderRadius.circular(10),
  );
}

import 'package:flutter/material.dart';
import 'package:portfolio/src/domain/repositories/figma_repository.dart';

class CodeGenScreen extends StatelessWidget {
   CodeGenScreen({super.key});

  FigmaRepository figmaRepository = FigmaRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                await figmaRepository.authenticateUser();
              },
              child: Text("click"),
            ),
          ],
        ),
      ),
    );
  }
}

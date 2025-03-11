import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/src/domain/repositories/figma_repository.dart';
import 'package:portfolio/src/presentation/views/code_gen/bloc/code_gen_bloc.dart';

class CodeGenScreen extends StatelessWidget {
  CodeGenScreen({super.key});

  FigmaRepository figmaRepository = FigmaRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CodeGenBloc, CodeGenState>(
        listener: (_,state) {},
        builder:(_,state) =>  Container(
          child: Column(
            children: [
              Text(state.code), 
              MaterialButton(
                onPressed: () async {
                  await figmaRepository.authenticateUser();
                },
                child: Text("click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

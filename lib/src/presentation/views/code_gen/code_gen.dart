import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/src/domain/repositories/figma_repository.dart';
import 'package:portfolio/src/presentation/views/code_gen/bloc/code_gen_bloc.dart';
import 'dart:html' as html;

class CodeGenScreen extends StatefulWidget {
  CodeGenScreen({
    super.key,
    this.code,
  });
  String? code;

  @override
  State<CodeGenScreen> createState() => _CodeGenScreenState();
}

class _CodeGenScreenState extends State<CodeGenScreen> {
  FigmaRepository figmaRepository = FigmaRepository();

  @override
  void initState() {
    context.read<CodeGenBloc>().add(ExtractOAuthCode());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(html.window.location.href);
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<CodeGenBloc, CodeGenState>(
        listener: (_, state) {
          print(state.code);
        },
        builder: (_, state) {
          if (state.code.isEmpty) {
            return Container(
              child: Column(
                children: [
                  Visibility(
                    visible: state.code.isEmpty,
                    child: MaterialButton(
                      onPressed: () async {
                        await figmaRepository.authenticateUser();
                      },
                      child: Text("click"),
                    ),
                  ),
                ],
              ),
            );
          }
          return Container(
            child: Column(
              children: [
                Container(
                  // color: Colors.amber,
                  child: Text(
                    state.code,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextField(
                  onChanged: (val) {
                    context.read<CodeGenBloc>().add(GetFileComponents(url: val));
                  },
                ), 
              ],
            ),
          );
        },
      ),
    );
  }
}

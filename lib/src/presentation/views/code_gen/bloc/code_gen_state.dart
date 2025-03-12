// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'code_gen_bloc.dart';

class CodeGenState {
  String code;
  CodeGenState({
    required this.code,
  });

  CodeGenState copyWith({
    String? code,
   
  }) {
    return CodeGenState(
      code: code ?? this.code,
      
    );
  }
}

class CodeGenInitial extends CodeGenState {
  CodeGenInitial() : super(code: "");
}

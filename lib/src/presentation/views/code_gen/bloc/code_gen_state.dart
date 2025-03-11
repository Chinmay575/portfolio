// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'code_gen_bloc.dart';

class CodeGenState {
  String code;
  String state;
  CodeGenState({
    required this.code,
    required this.state,
  });

  CodeGenState copyWith({
    String? code,
    String? state,
  }) {
    return CodeGenState(
      code: code ?? this.code,
      state: state ?? this.state,
    );
  }
}

class CodeGenInitial extends CodeGenState {
  CodeGenInitial() : super(code: "", state: "");
}

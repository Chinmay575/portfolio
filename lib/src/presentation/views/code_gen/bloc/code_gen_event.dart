// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'code_gen_bloc.dart';

class CodeGenEvent {}

class ExtractOAuthCode extends CodeGenEvent {
  String? code;
  ExtractOAuthCode({
    this.code,
  });
}

class GetFileComponents extends CodeGenEvent {
  String url;
  GetFileComponents({required this.url});
}

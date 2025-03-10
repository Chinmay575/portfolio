import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'code_gen_event.dart';
part 'code_gen_state.dart';

class CodeGenBloc extends Bloc<CodeGenEvent, CodeGenState> {
  CodeGenBloc() : super(CodeGenInitial()) {
    on<CodeGenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

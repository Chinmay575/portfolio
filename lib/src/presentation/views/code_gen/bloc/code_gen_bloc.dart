import 'package:bloc/bloc.dart';
import 'package:portfolio/src/domain/repositories/figma_repository.dart';
part 'code_gen_event.dart';
part 'code_gen_state.dart';

class CodeGenBloc extends Bloc<CodeGenEvent, CodeGenState> {
  FigmaRepository figmaRepository = FigmaRepository();
  CodeGenBloc() : super(CodeGenInitial()) {
    on<ExtractOAuthCode>(onExtractOAuthCode);
  }

  onExtractOAuthCode(ExtractOAuthCode event, Emitter<CodeGenState> emit) {
    (String, String) data = figmaRepository.extractOAuthCode();

    emit(state.copyWith(
      code: data.$1,
      state: data.$2,
    ));
  }
}

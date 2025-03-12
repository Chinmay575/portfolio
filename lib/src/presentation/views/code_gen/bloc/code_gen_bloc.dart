import 'package:bloc/bloc.dart';
import 'package:portfolio/src/domain/repositories/figma_repository.dart';
import 'dart:html' as html;
part 'code_gen_event.dart';
part 'code_gen_state.dart';

class CodeGenBloc extends Bloc<CodeGenEvent, CodeGenState> {
  FigmaRepository figmaRepository = FigmaRepository();
  CodeGenBloc() : super(CodeGenInitial()) {
    on<ExtractOAuthCode>(onExtractOAuthCode);
    on<GetFileComponents>(onGetFileComponents);
  }

  onExtractOAuthCode(ExtractOAuthCode event, Emitter<CodeGenState> emit) {
    String url = html.window.location.href;
    Uri uri = Uri.parse(url);
    print(uri);

    Map<String, String> data = (uri.queryParameters);

    String baseUrl =
        html.window.location.origin + (html.window.location.pathname ?? "");

    // Update the URL without reloading the page
    html.window.history.replaceState(null, '', baseUrl);
    emit(
      state.copyWith(
        code: data["code"],
      ),
    );
  }

  onGetFileComponents(
    GetFileComponents event,
    Emitter<CodeGenState> emit,
  ) async {
    await figmaRepository.getFileComponents(event.url);
  }
}

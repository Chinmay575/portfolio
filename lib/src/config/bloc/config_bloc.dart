import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/src/presentation/views/home/home_page.dart';
import 'package:portfolio/src/utils/themes.dart';

part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  ConfigBloc() : super(ConfigInitial()) {
    on<UpdateThemeMode>(onUpdateThemeMode);
    on<UpdateColorScheme>(onUpdateColorScheme);
    on<LoadBackground>(onLoadBackground);
  }

  onUpdateThemeMode(
    UpdateThemeMode event,
    Emitter<ConfigState> emit,
  ) async {
    String image = await loadBackground(state.colorScheme.primary);
    emit(
      state.copyWith(
          themeMode: event.mode,
          theme: Themes.lightTheme(s: state.colorScheme),
          darkTheme: Themes.darkTheme(s: state.colorScheme),
          backgroundImageData: image),
    );
  }

  onUpdateColorScheme(
    UpdateColorScheme event,
    Emitter<ConfigState> emit,
  ) async {
    String image = await loadBackground(event.colorScheme.primary);

    emit(
      state.copyWith(
        colorScheme: event.colorScheme,
        theme: Themes.lightTheme(s: event.colorScheme),
        darkTheme: Themes.darkTheme(s: event.colorScheme),
        backgroundImageData: image,
      ),
    );
  }

  onLoadBackground(LoadBackground event, Emitter<ConfigState> emit) async {
    String image = await loadBackground(state.colorScheme.primary);
    emit(state.copyWith(
      backgroundImageData: image,
    ));
  }

  Future<String> loadBackground(Color c) async {
    String svgData =
        await rootBundle.loadString('assets/images/large-triangles.svg');

    svgData = svgData.replaceAll(
      '{color}',
      c.toHex(),
    );

    return svgData;
  }
}

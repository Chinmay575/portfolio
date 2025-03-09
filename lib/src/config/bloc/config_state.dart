// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'config_bloc.dart';

class ConfigState {
  AppColorScheme colorScheme;
  ThemeMode themeMode;
  ThemeData theme;
  ThemeData darkTheme;
  String backgroundImageData;

  bool get isDarkMode => themeMode == ThemeMode.dark;
  ConfigState({
    required this.colorScheme,
    required this.themeMode,
    required this.theme,
    required this.darkTheme,
    required this.backgroundImageData, 
  });

  ConfigState copyWith({
    AppColorScheme? colorScheme,
    ThemeMode? themeMode,
    ThemeData? theme,
    ThemeData? darkTheme,
    String? backgroundImageData, 
  }) {
    return ConfigState(
      colorScheme: colorScheme ?? this.colorScheme,
      themeMode: themeMode ?? this.themeMode,
      theme: theme ?? this.theme,
      darkTheme: darkTheme ?? this.darkTheme,
      backgroundImageData: backgroundImageData ?? this.backgroundImageData
    );
  }
}

final class ConfigInitial extends ConfigState {
  static final AppColorScheme _scheme = AppColorScheme(
    primary: Colors.limeAccent,
    secondary: Colors.amber,
    tertiary: Colors.orange,
  );
  ConfigInitial()
      : super(
          themeMode: ThemeMode.dark,
          colorScheme: _scheme,
          theme: Themes.lightTheme(s: _scheme),
          darkTheme: Themes.darkTheme(s: _scheme),
          backgroundImageData: "", 
        );
}

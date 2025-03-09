// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'config_bloc.dart';

class ConfigEvent {}

class UpdateColorScheme extends ConfigEvent {
  AppColorScheme colorScheme;
  UpdateColorScheme({
    required this.colorScheme,
  });
}

class UpdateThemeMode extends ConfigEvent {
  ThemeMode mode;
  UpdateThemeMode({
    required this.mode,
  });
}

class LoadBackground extends ConfigEvent {}

part of 'theme_bloc.dart';

enum AppTheme { light, dark }

final themeMaps = {
  AppTheme.light: "light_theme",
  AppTheme.dark: "dark_theme",
};

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @required AppTheme theme,
  }) = _ThemeState;

  factory ThemeState.initial() => const ThemeState(theme: AppTheme.light);
}

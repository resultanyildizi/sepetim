part of 'theme_bloc.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeRead() = _ThemeRead;
  const factory ThemeEvent.themeChanged({@required AppTheme theme}) =
      _ThemeChanged;
}

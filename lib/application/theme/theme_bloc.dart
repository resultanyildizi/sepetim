import 'dart:async';

import 'package:Sepetim/domain/theme/i_theme_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final IThemeRepository _themeRepository;
  ThemeBloc(this._themeRepository);

  @override
  ThemeState get initialState => ThemeState.initial();

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(
      themRead: (e) async* {
        final themeKey = await _themeRepository.getCachedTheme();
        yield state.copyWith(
          theme: themeMaps.keys.firstWhere((key) => themeMaps[key] == themeKey),
        );
      },
      themeChanged: (e) async* {
        await _themeRepository.setCachedTheme(themeMaps[e.theme]);
        yield state.copyWith(theme: e.theme);
      },
    );
  }
}

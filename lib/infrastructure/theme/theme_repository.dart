import 'package:Sepetim/application/theme/theme_bloc.dart';
import 'package:Sepetim/domain/theme/i_theme_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IThemeRepository)
class ThemeRepository extends IThemeRepository {
  @override
  Future<String> getCachedTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedThemeKey =
        prefs.getString('theme') ?? themeMaps.entries.elementAt(0).value;
    return cachedThemeKey;
  }

  @override
  Future<void> setCachedTheme(String themeKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', themeKey);
  }
}

abstract class IThemeRepository {
  Future<String> getCachedTheme();
  Future<void> setCachedTheme(String themeKey);
}

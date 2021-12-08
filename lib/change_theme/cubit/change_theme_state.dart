part of 'change_theme_cubit.dart';

@immutable
abstract class ChangeThemeState {
  const ChangeThemeState();
}

class ChangeThemeInitial extends ChangeThemeState {
  const ChangeThemeInitial();
}

class ChangeThemeLight extends ChangeThemeState {
  const ChangeThemeLight();
}

class ChangeThemeDark extends ChangeThemeState {
  const ChangeThemeDark();
}

class ChangeThemeToggle extends ChangeThemeState {
  const ChangeThemeToggle();
}
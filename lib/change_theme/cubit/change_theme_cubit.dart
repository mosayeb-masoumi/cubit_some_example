import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());

  Future<void> setThemeLight()async {
      emit(ChangeThemeLight());
  }

  Future<void> setThemeDark()async {
    emit(ChangeThemeDark());
  }

  Future<void> setThemeToggle()async {
    emit(ChangeThemeToggle());
  }
}

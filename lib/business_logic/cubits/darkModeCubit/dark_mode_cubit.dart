import 'package:bloc/bloc.dart';

part 'dark_mode_state.dart';

class DarkModeCubit extends Cubit<DarkModeState> {
  DarkModeCubit() : super(DarkModeInitial());

  onDarkMode() {
    emit(DarkMode());
  }

  onLightMode() {
    emit(LightMode());
  }
}

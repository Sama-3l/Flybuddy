import 'package:bloc/bloc.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(OptionsInitial());

  onChangeOption() {
    emit(OptionChanged());
  }
}

import 'package:bloc/bloc.dart';

part 'terminal_state.dart';

class TerminalCubit extends Cubit<TerminalState> {
  TerminalCubit() : super(TerminalInitial());

  onChangeOption() {
    emit(TerminalChanged());
  }
}

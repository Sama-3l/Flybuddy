import 'package:bloc/bloc.dart';

part 'self_parking_state.dart';

class SelfParkingCubit extends Cubit<SelfParkingState> {
  SelfParkingCubit() : super(SelfParkingInitial());

  onChangeOption() {
    emit(TerminalChanged());
  }
}

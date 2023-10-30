import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController(super.initialState);

  void display(number) {
    emit(state.copyWith(displayStatus: DisplayStatus.notDisplay));
    String typedNumber = '';
    typedNumber = state.displayNumber! + number;
    emit(state.copyWith(
        displayNumber: typedNumber, displayStatus: DisplayStatus.display));
  }

  toInt() {
    List<int> numbersList = [];
    int numberToInt = int.parse(state.displayNumber!);
    numbersList.add(numberToInt);
    emit(
      state.copyWith(displayNumber: ''),
    );

  }
}

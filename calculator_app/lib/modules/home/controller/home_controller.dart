import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController(super.initialState);

  void display(number) {

    emit(state.copyWith(displayStatus: DisplayStatus.notDisplay));
    String show = '';
    show = state.displayNumber! + number;


    emit(state.copyWith(
        displayNumber: show,
        displayStatus: DisplayStatus.display));
  }

}

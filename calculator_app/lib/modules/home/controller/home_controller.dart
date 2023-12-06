import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:math_expressions/math_expressions.dart';
part 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController(super.initialState);

  void showElements(String element) {
    String elements = state.numbersOperation;
    elements += element;
    emit(
      state.copyWith(numbersOperation: elements),
    );
  }

  void showOperators(String operator) {
    if (state.numbersOperation != '') {
      String lastChar =
          state.numbersOperation[state.numbersOperation.length - 1];
      if (lastChar != '+' &&
          lastChar != '-' &&
          lastChar != '+' &&
          lastChar != '/') {
        String elements = state.numbersOperation;
        elements += operator;
        emit(state.copyWith(numbersOperation: elements));
      }
    }
  }

  void clear() {
    emit(
      state.copyWith(numbersOperation: ''),
    );
  }

  void removeLast() {
    if (state.numbersOperation != '') {
      String elementRemoved = state.numbersOperation
          .substring(0, state.numbersOperation.length - 1);
      emit(
        state.copyWith(numbersOperation: elementRemoved),
      );
    }
  }

  void equal() {
    String lastChar = state.numbersOperation[state.numbersOperation.length - 1];
    if (state.numbersOperation != '' &&
        lastChar != '+' &&
        lastChar != '-' &&
        lastChar != '+' &&
        lastChar != '/') {
      Parser parser = Parser();
      Expression expression = parser.parse(state.numbersOperation);
      ContextModel cm = ContextModel();
      double result = expression.evaluate(EvaluationType.REAL, cm);
      emit(
        state.copyWith(
          numbersOperation: result.toString(),
        ),
      );
    }
  }
}

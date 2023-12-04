part of 'home_controller.dart';

enum HomeStatus { initial, loading, failure, success }



class HomeState extends Equatable {
  final HomeStatus status;
  final String numbersOperation;



  const HomeState._(
      {required this.status,
      required this.numbersOperation});

  const HomeState.initial()
      : this._(
          status: HomeStatus.initial,
          numbersOperation: '');

  @override
  List<Object?> get props => [status, numbersOperation];

  HomeState copyWith({
    HomeStatus? status,
    String? numbersOperation
  }) {
    return HomeState._(
      status: status ?? this.status,
      numbersOperation: numbersOperation ?? this.numbersOperation,
    );
  }
}

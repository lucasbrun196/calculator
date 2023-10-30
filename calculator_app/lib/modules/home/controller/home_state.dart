part of 'home_controller.dart';

enum HomeStatus { initial, loading, failure, success }

enum DisplayStatus { initial, display, notDisplay}



class HomeState extends Equatable {
  final HomeStatus status;
  final String? displayNumber;
  final DisplayStatus? displayStatus;


  const HomeState._(
      {required this.status, required this.displayNumber, required this.displayStatus});

  const HomeState.initial()
      : this._(
          status: HomeStatus.initial,
          displayNumber: '',
          displayStatus: DisplayStatus.initial,
        );

  @override
  List<Object?> get props => [status, displayNumber, displayStatus];

  HomeState copyWith({
    HomeStatus? status,
    String? displayNumber,
    DisplayStatus? displayStatus,
    
  }) {
    return HomeState._(
      status: status ?? this.status,
      displayNumber: displayNumber ?? this.displayNumber,
      displayStatus: displayStatus ?? this.displayStatus,
    
    );
  }
}

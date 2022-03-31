part of 'clubs_cubit.dart';

abstract class ClubsState extends Equatable {
  const ClubsState();
}

class ClubsInitial extends ClubsState {
  @override
  List<Object> get props => [];
}

class ClubsLoading extends ClubsState {
  @override
  List<Object> get props => [];
}


class ClubsLoaded extends ClubsState {
  final List<Clubs?> clubs;
  ClubsLoaded(this.clubs, ) : super();

  @override
  List<Object> get props => [clubs];
}


class ClubsError extends ClubsState {
  final String errorMessage;

  ClubsError(this.errorMessage): super();

  @override
  List<Object> get props => [errorMessage];
}
part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserSucces extends UserState {
  final User user;
  const UserSucces(this.user);

  @override
  List<Object> get props => [user];
}

class UserFailed extends UserState {
  final String message;

  const UserFailed(this.message);

  @override
  List<Object> get props => [message];
}

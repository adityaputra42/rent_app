part of 'car_cubit.dart';

abstract class CarState extends Equatable {
  const CarState();

  @override
  List<Object> get props => [];
}

class CarInitial extends CarState {}

class CarLoading extends CarState {}

class CarSucces extends CarState {
  final List<Car> cars;

  const CarSucces(this.cars);

  @override
  List<Object> get props => [cars];
}

class CarFailed extends CarState {
  final String error;

  const CarFailed(this.error);

  @override
  List<Object> get props => [error];
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rent_app/models/models.dart';
import 'package:rent_app/services/services.dart';

part 'car_state.dart';

class CarCubit extends Cubit<CarState> {
  CarCubit() : super(CarInitial());

  // void getCars() async {
  //   try {
  //     emit(CarLoading());
  //     List<Car> car = mockCars;
  //     emit(CarSucces(car));
  //   } catch (e) {
  //     emit(CarFailed(e.toString()));
  //   }
  // }

  Future<void> getCars() async {
    ApiReturnValue<List<Car>> result = await CarServices.getCars();

    if (result.value != null) {
      emit(CarSucces(result.value!));
    } else {
      emit(CarFailed(result.message!));
    }
  }
}

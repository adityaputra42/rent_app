part of 'services.dart';

class CarServices {
  static Future<ApiReturnValue<List<Car>>> getCars() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return ApiReturnValue(value: mockCars);
  }
}

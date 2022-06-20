part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(
      String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return ApiReturnValue(value: mocUser);
  }
}

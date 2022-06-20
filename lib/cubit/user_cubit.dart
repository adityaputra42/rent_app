import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rent_app/models/models.dart';
import 'package:rent_app/services/services.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future<void> signIn(String email, String password) async {
    ApiReturnValue<User> result = await UserServices.signIn(email, password);

    if (result.value != null) {
      emit(UserSucces(result.value!));
    } else {
      emit(UserFailed(result.message!));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rent_app/models/models.dart';
import 'package:rent_app/services/services.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  Future<void> getTransactions() async {
    ApiReturnValue<List<Transaction>> result =
        await TransactionServices.getTransactions();
    if (result.value != null) {
      emit(TransactionSucces(result.value!));
    } else {
      emit(TransactionFailed(result.message!));
    }
  }

  Future<bool> submitTransaction(Transaction transaction) async {
    ApiReturnValue<Transaction> result =
        await TransactionServices.submitTransaction(transaction);

    if (result.value != null) {
      emit(TransactionSucces(
          (state as TransactionSucces).transactions + [result.value!]));
      return true;
    } else {
      return false;
    }
  }
}

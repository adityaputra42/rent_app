part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionSucces extends TransactionState {
  final List<Transaction> transactions;

  const TransactionSucces(this.transactions);

  @override
  List<Object> get props => [transactions];
}

class TransactionFailed extends TransactionState {
  final String message;
  const TransactionFailed(this.message);

  @override
  List<Object> get props => [message];
}

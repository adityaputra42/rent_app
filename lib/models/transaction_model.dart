part of 'models.dart';

enum TransactionStatus { pending, onProcces, finish, cancelled }

class Transaction extends Equatable {
  final int id;
  final Car car;
  final DateTime? startRent;
  final DateTime? finishRent;
  final DateTime? dateTime;
  final String? destination;
  final String? paket;
  final int day;
  final int pricePaket;
  final int total;
  final TransactionStatus? status;
  final User? user;

  const Transaction(
      {required this.id,
      required this.car,
      this.startRent,
      this.finishRent,
      this.dateTime,
      this.destination,
      this.day = 0,
      this.pricePaket = 0,
      this.paket,
      this.total = 0,
      this.status = TransactionStatus.pending,
      this.user});

  Transaction copyWith(
      {int? id,
      Car? car,
      DateTime? startRent,
      DateTime? finishRent,
      DateTime? dateTime,
      String? destination,
      String? paket,
      int? day,
      int? pricePaket,
      int? total,
      TransactionStatus? status,
      User? user}) {
    return Transaction(
      id: id ?? this.id,
      car: car ?? this.car,
      startRent: startRent ?? this.startRent,
      finishRent: finishRent ?? this.finishRent,
      dateTime: dateTime ?? this.dateTime,
      destination: destination ?? this.destination,
      paket: paket ?? this.paket,
      day: day ?? this.day,
      pricePaket: pricePaket ?? this.pricePaket,
      total: total ?? this.total,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [
        id,
        car,
        startRent,
        finishRent,
        dateTime,
        day,
        paket,
        pricePaket,
        destination,
        status,
        total,
        user
      ];
}

Transaction mockTransaction = Transaction(
    id: 1,
    car: mocMobil,
    startRent: DateTime.now(),
    finishRent: DateTime.now(),
    dateTime: DateTime.now(),
    destination: 'Kebumen',
    day: 3,
    paket: 'With Drive',
    pricePaket: 200000,
    total: 2500000,
    status: TransactionStatus.pending,
    user: mocUser);

List<Transaction> mockTransactions = [
  Transaction(
      id: 2,
      car: mockCars[1],
      startRent: DateTime.now().add(const Duration(days: 2)),
      finishRent: DateTime.now().add(const Duration(days: 4)),
      dateTime: DateTime.now(),
      destination: 'Kebumen',
      day: 3,
      paket: 'Self drive',
      total: (mockCars[1].price * 3 + 350000),
      status: TransactionStatus.pending,
      user: mocUser),
  Transaction(
      id: 3,
      car: mockCars[2],
      startRent: DateTime.now().subtract(const Duration(days: 2)),
      finishRent: DateTime.now().add(const Duration(days: 4)),
      dateTime: DateTime.now().subtract(const Duration(days: 4)),
      destination: 'Kebumen',
      day: 3,
      paket: 'All In',
      total: (mockCars[2].price * 3 + 350000),
      status: TransactionStatus.onProcces,
      user: mocUser),
  Transaction(
      id: 4,
      car: mockCars[4],
      startRent: DateTime.now().subtract(const Duration(days: 5)),
      finishRent: DateTime.now().subtract(const Duration(days: 3)),
      dateTime: DateTime.now(),
      destination: 'Kebumen',
      day: 3,
      paket: 'With Driver',
      total: (mockCars[4].price * 3 + 350000),
      status: TransactionStatus.finish,
      user: mocUser),
  Transaction(
      id: 5,
      car: mockCars[0],
      startRent: DateTime.now().add(const Duration(days: 3)),
      finishRent: DateTime.now().add(const Duration(days: 5)),
      dateTime: DateTime.now(),
      destination: 'Kebumen',
      day: 3,
      paket: 'All In plus',
      total: (mockCars[0].price * 3 + 250000),
      status: TransactionStatus.cancelled,
      user: mocUser)
];

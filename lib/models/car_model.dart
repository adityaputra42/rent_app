part of 'models.dart';

enum CarType { mpv, suv, sedan, minibus }

enum StatusCar { available, onrent }

class Car extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String year;
  final String topspeed;
  final String acceleration;
  final String power;
  final double rate;
  final int price;
  final StatusCar? status;
  final CarType? type;

  const Car(
      {required this.id,
      this.picturePath = '',
      this.name = '',
      this.description = '',
      this.year = '',
      this.topspeed = '',
      this.acceleration = '',
      this.power = '',
      this.rate = 0,
      this.price = 0,
      this.status,
      this.type});

  @override
  List<Object?> get props => [
        id,
        picturePath,
        name,
        description,
        year,
        topspeed,
        acceleration,
        power,
        rate,
        price,
        status,
        type,
      ];
}

// Data Dami
List<Car> mockCars = const [
  Car(
      id: 1,
      picturePath: 'assets/fortuner.png',
      name: 'Fortuner',
      description:
          'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
      rate: 9.1,
      year: '2019',
      topspeed: '158',
      acceleration: '5.6',
      power: '104',
      price: 1200000,
      status: StatusCar.available,
      type: CarType.mpv),
  Car(
      id: 2,
      picturePath: 'assets/alphard.png',
      name: 'Alphard',
      description:
          'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
      rate: 9.2,
      year: '2018',
      topspeed: '151',
      acceleration: '6.6',
      power: '104',
      price: 1500000,
      status: StatusCar.available,
      type: CarType.mpv),
  Car(
      id: 3,
      picturePath: 'assets/camry.png',
      name: 'Camry',
      description:
          'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
      rate: 9.7,
      year: '2020',
      topspeed: '212',
      acceleration: '5.2',
      power: '184',
      price: 1800000,
      status: StatusCar.available,
      type: CarType.sedan),
  Car(
      id: 4,
      picturePath: 'assets/hiace.png',
      name: 'Hiace',
      description:
          'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
      rate: 8.5,
      year: '2018',
      topspeed: '132',
      acceleration: '8.6',
      power: '107',
      price: 1300000,
      status: StatusCar.available,
      type: CarType.minibus),
  Car(
      id: 5,
      picturePath: 'assets/rush.png',
      name: 'Toyota Rush',
      description:
          'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
      rate: 8.5,
      year: '2019',
      topspeed: '164',
      acceleration: '5.9',
      power: '114',
      price: 800000,
      status: StatusCar.available,
      type: CarType.suv),
  Car(
      id: 6,
      picturePath: 'assets/avanza.png',
      name: 'Avanza Veloz',
      description:
          'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
      rate: 9.3,
      year: '2017',
      topspeed: '138',
      acceleration: '6.7',
      power: '103',
      price: 700000,
      status: StatusCar.onrent,
      type: CarType.suv)
];

Car mocMobil = const Car(
    id: 1,
    picturePath: 'assets/fortuner.png',
    name: 'Fortuner',
    description:
        'Mobil Toyota dengan mesin berkapasitas 2500cc turbo, memiliki kapasitas penumpang 7 kursi',
    rate: 9.1,
    year: '2020',
    topspeed: '188',
    acceleration: '5.3',
    power: '154',
    price: 1200000,
    status: StatusCar.onrent,
    type: CarType.mpv);

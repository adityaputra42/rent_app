part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String password;
  final String image;
  final String phoneNumber;
  final String address;
  final String houseNumber;
  final String city;

  const User(
      {required this.id,
      this.name = '',
      this.email = '',
      this.image = '',
      this.password = '',
      this.phoneNumber = '',
      this.address = '',
      this.houseNumber = '',
      this.city = ''});

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        image,
        password,
        phoneNumber,
        address,
        houseNumber,
        city
      ];
}

User mocUser = const User(
    id: 1,
    name: 'Aditya Putra Pratama',
    email: 'adit@gmail.com',
    image: 'assets/me.jpg',
    password: '12345678',
    phoneNumber: '08881113234',
    address: 'Cilebut Bogor',
    houseNumber: 'A 1',
    city: 'Bogor');

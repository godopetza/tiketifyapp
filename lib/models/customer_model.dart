import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String? name;
  final String? phonenumber;
  final int? numberoftickets;
  final String? eventname;
  final String? id;

  const Customer(
      {required this.eventname,
      required this.phonenumber,
      required this.id,
      required this.name,
      required this.numberoftickets});

  Customer copy({
    String? name,
    String? phonenumber,
    int? numberoftickets,
    String? eventname,
    String? id,
  }) =>
      Customer(
        eventname: eventname ?? this.eventname,
        phonenumber: phonenumber ?? this.phonenumber,
        id: id ?? this.id,
        name: name ?? this.name,
        numberoftickets: numberoftickets ?? this.numberoftickets,
      );

  @override
  List<Object?> get props => [
        name,
        phonenumber,
        numberoftickets,
        id,
        eventname,
      ];

  ///Sample Customers
  static List<Customer> customers = [
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'John',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      phonenumber: '2540000000',
    ),
    const Customer(
      name: 'Jane',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      phonenumber: '2540000000',
    ),
  ];
}

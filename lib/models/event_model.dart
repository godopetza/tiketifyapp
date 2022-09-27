import 'package:equatable/equatable.dart';

class Event extends Equatable {
  final String? eventphoto;
  final String? eventdescription;
  final int? numberoftickets;
  final String? eventname;
  final String? id;
  final String? eventDate;
  final int? eventPrice;

  const Event(
      {required this.eventname,
      required this.eventdescription,
      required this.id,
      required this.eventphoto,
      required this.numberoftickets,
      required this.eventDate,
      required this.eventPrice,
      });

  Event copy({
    String? name,
    String? eventdescription,
    int? numberoftickets,
    String? eventname,
    String? id,
    String? eventphoto,
    String? eventDate,
    int? eventPrice,
  }) =>
      Event(
        eventname: eventname ?? this.eventname,
        eventdescription: eventdescription ?? this.eventdescription,
        id: id ?? this.id,
        eventphoto: eventphoto ?? this.eventphoto,
        numberoftickets: numberoftickets ?? this.numberoftickets,
        eventDate: eventDate ?? this.eventDate,
        eventPrice: eventPrice ?? this.eventPrice,
      );

  @override
  List<Object?> get props => [
        eventphoto,
        eventdescription,
        numberoftickets,
        id,
        eventname,
        eventDate,
        eventphoto,
        eventPrice
      ];

  ///Sample Events
  static List<Event> events = [
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1000,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/2/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=940&q=80',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4000,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/1/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=940&q=80',
      id: '1',
      eventname: 'DIAMOND',
      numberoftickets: 1155,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/2/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=940&q=80',
      id: '3',
      eventname: 'HARMONIZE',
      numberoftickets: 4,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/1/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      id: '1',
      eventname: 'RANDOM',
      numberoftickets: 1,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/2/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=940&q=80',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/1/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=940&q=80',
      id: '1',
      eventname: 'SAUTI SOL',
      numberoftickets: 1,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/2/2023',
      eventPrice: 4500,
    ),
    const Event(
      eventphoto:
          'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      id: '3',
      eventname: 'NSK',
      numberoftickets: 4,
      eventdescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla quam, facilisis at eleifend a, pharetra hendrerit libero. Ut volutpat, sapien in cursus bibendum, turpis quam vestibulum erat, eget sodales felis felis at dolor. Donec consequat, orci id blandit auctor, risus magna semper arcu, dapibus malesuada felis neque non risus. Praesent lacinia porttitor imperdiet. Mauris lacinia, urna non maximus dictum, tellus sem pulvinar magna, vel facilisis sapien arcu vel erat. Etiam at libero non erat elementum posuere. Donec ut faucibus dolor. Aenean sit amet orci vitae nulla placerat volutpat vel vitae dolor. Duis quis pellentesque velit. In sed velit mi. Phasellus vehicula accumsan sapien, et eleifend ex varius sit amet. Nam luctus hendrerit nulla vitae pellentesque.',
      eventDate: '1/1/2023',
      eventPrice: 4500,
    ),
  ];
}

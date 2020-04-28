import 'universities_model.dart';

class Province {
  String imageUrl;
  String city;
  String country;
  String description;
  List<University> universities;

  Province({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.universities,
  });
}

List<University> universities = [
  University(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Witwatersrand University',
    type: 'Knowledge and work',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 300,
  ),
  University(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'University Of Pretoria',
    type: 'We empower people',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  University(
    imageUrl: 'assets/images/murano.jpg',
    name: 'University Of Limpopo',
    type: 'Finding Solutions For Africa',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Province> provinces = [
  Province(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Gauteng',
    country: 'South Africa',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    universities: universities,
  ),
  Province(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Limpopo',
    country: 'South Africa',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    universities: universities,
  ),
  Province(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'North West',
    country: 'South Africa',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    universities: universities,
  ),
  Province(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Western Cape',
    country: 'South Africa',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    universities: universities,
  ),
  Province(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'Free State',
    country: 'South Africa',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    universities: universities,
  ),
];

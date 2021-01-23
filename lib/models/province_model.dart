import 'courses_model.dart';
import 'institutions_model.dart';


class Province {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Institution> institutions ;

  Province({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.institutions,
  });
}



List<Province> provinces = [
  Province(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Gauteng',
    country: 'South Africa',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    institutions: gautengInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'Limpopo',
    country: 'South Africa',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    institutions: limpopoInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/northwest.jpg',
    city: 'North West',
    country: 'South Africa',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    institutions: northWestInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/westerncape.jpg',
    city: 'Western Cape',
    country: 'South Africa',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    institutions: westernCapeInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/freestate.jpg',
    city: 'Free State',
    country: 'South Africa',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    institutions: freeStateInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/easterncape.jpg',
    city: 'Free State',
    country: 'South Africa',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    institutions: easternCapeInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/kwazulunatal.jpg',
    city: 'Free State',
    country: 'South Africa',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    institutions: kwazuluNatalInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/mpumalanga.jpg',
    city: 'Mpumalanga',
    country: 'South Africa',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    institutions: mpumalangaInstitutions,
  ),
  Province(
    imageUrl: 'assets/images/northencape.jpg',
    city: 'Northen Cape',
    country: 'South Africa',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    institutions: northenCapeInstitutions,
  ),
];


List<Institution> gautengInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Witwatersrand University',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,

  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'University Of Pretoria',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,
  ),
  Institution(
    imageUrl: 'assets/images/murano.jpg',
    name: 'University Of Johannesburg',
    type: 'Solutions For Africa',
    startTimes: ['11 April', '18 June'],
    rating: 3,
    price: 125,

  ),
];

List<Institution> northWestInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'North West University',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,

  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Monash University',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,

  ),
];

List<Institution> limpopoInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'University Of Limpopo',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,

  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'University Of Venda',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,

  ),
];

List<Institution> freeStateInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'University Of Free State',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,

  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Central University of Technology',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,

  ),
];

List<Institution> mpumalangaInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'University Of Mpumalanga',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,
  ),
];

List<Institution> northenCapeInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'University Of Northen Cape',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,
  ),
];

List<Institution> westernCapeInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'University Of Cape Town',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,
  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'University Of Western Cape',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,
  ),
  Institution(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Stellenbosch University',
    type: 'Solutions For Africa',
    startTimes: ['11 April', '18 June'],
    rating: 3,
    price: 125,
  ),
  Institution(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Cape Peninsula University Of Technology',
    type: 'Solutions For Africa',
    startTimes: ['11 April', '18 June'],
    rating: 3,
    price: 125,
  ),
];

List<Institution> easternCapeInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Rhodes University',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,
  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Nelson Mandela Metropolitan University',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,
  ),
  Institution(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Walter Sisulu University',
    type: 'Solutions For Africa',
    startTimes: ['11 April', '18 June'],
    rating: 3,
    price: 125,
  ),
  Institution(
    imageUrl: 'assets/images/murano.jpg',
    name: 'University Of Fort Hare',
    type: 'Solutions For Africa',
    startTimes: ['11 April', '18 June'],
    rating: 3,
    price: 125,
  ),
];

List<Institution> kwazuluNatalInstitutions = [
  Institution(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'University Of Kwazulu Natal',
    type: 'Knowledge and work',
    startTimes: ['11 April', '18 June'],
    rating: 5,
    price: 100,
  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Durban University of Technology',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,
  ),
  Institution(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'University of Zululand',
    type: 'We empower people',
    startTimes: ['11 April', '18 June'],
    rating: 4,
    price: 210,
  ),
];
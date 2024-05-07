import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'point_of_interest.dart';

class Destination {
  final String id;
  final String name;
  final LatLng latLng;
  final String description;
  final String imageUrl;
  final List<String> additionalImages;
  final double rating;
  final int numReviews;
  final List<PointOfInterest> pointsOfInterest;

  const Destination({
    required this.id,
    required this.name,
    required this.latLng,
    required this.description,
    required this.imageUrl,
    required this.additionalImages,
    required this.rating,
    required this.numReviews,
    required this.pointsOfInterest,
  });

  @override
  String toString() {
    return 'Destination(id: $id, name: $name, latLng: $latLng, description: $description, imageUrl: $imageUrl, additionalImages: $additionalImages, rating: $rating, numReviews: $numReviews, pointsOfInterest: $pointsOfInterest)';
  }

  static const List<Destination> sampleDestinations = [
    Destination(
      id: '1',
      name: 'Pamplona',
      latLng: LatLng(7.3720218, -72.6678032),
      description: 'Pamplona, fundada el primero de noviembre de 1549, es el municipio más antiguo del departamento de Norte de Santander y fue el punto de partida de quienes crearon ciudades como Ocaña, Bucaramanga y Cúcuta (a 75 km al norte). Con una temperatura promedio de 11 ºC, Pamplona descansa en el valle del Espíritu Santo y es arropada por la bruma de los cerros que la rodean.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD3ZBnMTWha9tyVo3Hs6uU3Mr7KH1x9UkdkAyOdsQJgg&s',
      additionalImages: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUi7c_vsUFTzCyCTipjFvolYI11qdAfoR6AKYEbcHJAQ&s',
        'https://pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-DE-MERCADO-CUBIERTO-PAMPLONA.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT24RwCkhXK3VZh9NwEbNlc4aoA64KT3Usf-_Hnwgn9OQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_NtyCUDfxc3n9YJF_dQ4snwet8YgKH3ekxGqdz_egPg&s',
      ],
      rating: 4.8,
      numReviews: 1589,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p1',
          name: 'Parque de pamplona',
          latLng: LatLng(7.376149,-72.6532817),
          description:
              'World-famous statue gifted by France as a symbol of freedom.',
        ),
        PointOfInterest(
          id: 'p2',
          name: 'Cristo Rey',
          latLng: LatLng(7.3806004,-72.6400502),
          description:
              'Urban oasis with ball fields, a zoo, & a carousel, plus formal gardens & more.',
        ),
        PointOfInterest(
          id: 'p3',
          name: 'Catedral Santa Clara',
          latLng: LatLng(7.3746679,-72.6499822),
          description:
              'Bustling destination in the heart of the Theater District known for bright lights, shopping & shows.',
        ),
      ],
    ),
    Destination(
      id: '2',
      name: 'Ocaña',
      latLng: LatLng(8.2521334, -73.3882403),
      description: 'Ubicado a 206 km de Cúcuta y fundado en 1570, su temperatura promedio es de 21 °C.Rincón amable y solariego, cuna de leyendas y tradiciones de la más clara procedencia hispana por ello su riqueza patrimonial se remonta a la época colonial; se levanta entre los cerros de Cristo Rey y la Santa Cruz, rodeado de calles retorcidas, viejos portones y ventanas que discurren somnolientos bajo las techumbres rojas.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7npiE2MLWrTAWe99FOZMvIRlall9g7XvUAxePpQBPCg&s',
      additionalImages: [
        'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      ],
      rating: 4.7,
      numReviews: 1390,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p4',
          name: 'Los Estoraques Unique Natural Area',
          latLng: LatLng(8.2200407,-73.2395254),
          description:
              'Iconic wrought-iron lattice tower offering expansive views of Paris.',
        ),
        PointOfInterest(
          id: 'p5',
          name: 'Parque Principal',
          latLng: LatLng(8.2381712,-73.3620047),
          description:
              'Historic palace housing huge art collection, from Roman sculptures to Da Vinci\'s "Mona Lisa."',
        ),
        PointOfInterest(
          id: 'p6',
          name: 'Museo "Antón García de Bonilla"',
          latLng: LatLng(8.2388228,-73.3583704),
          description:
              'Iconic, 13th-century cathedral with flying buttresses & gargoyles, setting for Hugo\'s novel.',
        ),
      ],
    ),
    Destination(
      id: '3',
      name: 'Chinacota',
      latLng: LatLng(7.5994321,-72.623674),
      description: 'Chinácota es un municipio que está ubicado a 40 minutos de la Ciudad de Cúcuta de la carretera que conduce a Pamplona, posee un excelente clima de 24°, una altitud promedio de 1.250 msnm, cuenta con una población de más de 15 mil habitantes, de fácil acceso recorriendo 11 km de carretera en buen estado.',
      imageUrl:
          'https://images.unsplash.com/photo-1513407030348-c983a97b98d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
      additionalImages: [
        'https://images.unsplash.com/photo-1544885935-98dd03b09034?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1544885935-98dd03b09034?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1544885935-98dd03b09034?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1544885935-98dd03b09034?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
      ],
      rating: 4.9,
      numReviews: 1789,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p7',
          name: 'Mount Fuji',
          latLng: LatLng(35.3606, 138.7274),
          description:
              'Iconic, active stratovolcano known for its symmetrical snow-capped peak & climbing routes.',
        ),
        PointOfInterest(
          id: 'p8',
          name: 'Tokyo Tower',
          latLng: LatLng(35.6586, 139.7454),
          description:
              'Prominent steel tower offering observation decks with panoramic city views.',
        ),
        PointOfInterest(
          id: 'p9',
          name: 'Senso-ji',
          latLng: LatLng(35.7148, 139.7967),
          description:
              'Tokyo\'s oldest temple, offering shopping, dining & a pagoda with views.',
        ),
      ],
    ),
    Destination(
      id: '4',
      name: 'Bochalema',
      latLng: LatLng(7.614129,-72.6478413),
      description: 'Además de este majestuoso árbol de alrededor de 20 metros de altura, cerca de la plaza principal, está el Templo Parroquial Sagrado Corazón de Jesús. En este Templo de estilo romano, se celebran varias festividades y entre ellas, la patronal al Sagrado Corazón de Jesús y a la señora de la Cueva Santa',
      imageUrl:
          'https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      additionalImages: [
        'https://images.unsplash.com/photo-1598948485421-33a1655d3c18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1598948485421-33a1655d3c18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1598948485421-33a1655d3c18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1598948485421-33a1655d3c18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
      ],
      rating: 4.6,
      numReviews: 1890,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p10',
          name: 'Bochalema Main Park',
          latLng: LatLng(7.6126974,-72.6476575),
          description:
              'Iconic Sydney opera house with a distinctive sail-like design.',
        ),
        PointOfInterest(
          id: 'p11',
          name: 'Parque',
          latLng: LatLng(7.6109474,-72.6479528),
          description:
              'Large steel arch bridge known for panoramic views of the city skyline.',
        ),
        PointOfInterest(
          id: 'p12',
          name: 'Sendero ecológico AguaBlanca',
          latLng: LatLng(7.609215,-72.6506394),
          description:
              'Well-known beach attracting surfers to its large, curling waves, and hipsters to its organic eateries.',
        ),
      ],
    ),
    Destination(
      id: '5',
      name: 'villa del rosario',
      latLng: LatLng(7.8510555,-72.51113),
      description: 'Localizado a 7 km de la capital del departamento con una temperatura media de 26 °C.Este municipio presenta uno de los legados históricos mas importantes de Colombia: Las ruinas del Templo del Congreso de 1821, La Casa Natal del General Santander, Las ruinas de la Capilla Santa Ana, La Casa La Bagatela, y el Tamarindo Histórico, que han sido consagrados monumentos Nacionales, conforman un asombroso complejo histórico.',
      imageUrl:
          'https://images.unsplash.com/photo-1580060839134-75a5edca2e99?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80',
      additionalImages: [
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      ],
      rating: 4.8,
      numReviews: 1523,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p13',
          name: 'Historic church of Villa del Rosario',
          latLng: LatLng(7.8380383,-72.4842634),
          description:
              'Flat-topped mountain forming a prominent landmark overlooking the city of Cape Town.',
        ),
        PointOfInterest(
          id: 'p14',
          name: 'Casa Natal del General Santander',
          latLng: LatLng(7.8341063,-72.4699721),
          description:
              'Iconic island prison where Nelson Mandela was held, with tours led by ex-prisoners.',
        ),
        PointOfInterest(
          id: 'p15',
          name: 'Palmas Golf',
          latLng: LatLng(7.8427282,-72.4710749),
          description:
              'Scenic headland marking the southeastern corner of the Cape Peninsula.',
        ),
      ],
    ),
  ];
}

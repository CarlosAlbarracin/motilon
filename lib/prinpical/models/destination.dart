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
              'Ubicado en el centro de Pamplona, es un espacio público bautizado en homenaje a Águeda Gallardo de Villamizar, la mujer que el 4 de julio de 1810 proclamó la Independencia de Pamplona.',
        ),
        PointOfInterest(
          id: 'p2',
          name: 'Cristo Rey',
          latLng: LatLng(7.3806004,-72.6400502),
          description:
              'Probablemente el mejor mirador de la ciudad accesible en bus. Desde allí se puede observar una espectacular vista panorámica de toda Pamplona.',
        ),
        PointOfInterest(
          id: 'p3',
          name: 'Catedral Santa Clara',
          latLng: LatLng(7.3746679,-72.6499822),
          description:
              'Es una de las más antiguas y joya arquitectónica de la ciudad. Durante su festividad religiosa se reúne el gremio de transportadores de la región y feligreses para venerar a su patrona cada 16 de julio',
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
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Columna_de_los_esclavos_y_torre_catedral_Santa_Ana.JPG/220px-Columna_de_los_esclavos_y_torre_catedral_Santa_Ana.JPG',
        'https://cdn.colombia.com/sdi/2022/03/18/ocana-atractivo-santander-1008422.jpg',
        'https://www.laopinion.co/sites/default/files/2021-11/Turismo-Oca%C3%B1a.jpg',
        'https://miocana.com/wp-content/uploads/elementor/thumbs/mi.ocana_275948665_667187864514202_5792741380568209741_n-1-ql85wleyxi3sshrj80g8j3afyl7sdf0610nds2qgrc.jpg',
      ],
      rating: 4.7,
      numReviews: 1390,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p4',
          name: 'Los Estoraques Unique Natural Area',
          latLng: LatLng(8.2200407,-73.2395254),
          description:
              'El Área Natural Única Los Estoraques es uno de los parques nacionales más pequeños, con una superficie de solo 6 km², ubicado en la Cordillera Oriental de Colombia en el Departamento de Norte de Santander',
        ),
        PointOfInterest(
          id: 'p5',
          name: 'Parque Principal',
          latLng: LatLng(8.2381712,-73.3620047),
          description:
              'Parque de la Tierra de la Cocota y del Voceado. Ocaña esta ubicado a 5 horas de la ciudad de Bucaramanga, en el departamento de Norte de Santander.',
        ),
        PointOfInterest(
          id: 'p6',
          name: 'Museo "Antón García de Bonilla"',
          latLng: LatLng(8.2388228,-73.3583704),
          description:
              'El Museo Antón García de Bonilla es un museo ubicado en Ocaña, Colombia. El museo contiene objetos históricos de la ciudad y de la antigua provincia de Ocaña',
        ),
      ],
    ),
    Destination(
      id: '3',
      name: 'Chinacota',
      latLng: LatLng(7.5994321,-72.623674),
      description: 'Chinácota es un municipio que está ubicado a 40 minutos de la Ciudad de Cúcuta de la carretera que conduce a Pamplona, posee un excelente clima de 24°, una altitud promedio de 1.250 msnm, cuenta con una población de más de 15 mil habitantes, de fácil acceso recorriendo 11 km de carretera en buen estado.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYz16EEte2eT18ISuqegGfy7Ij225T1JlOAm_Wv_ovOQ&s',
      additionalImages: [
        'https://www.esariri.com/wp-content/uploads/2022/09/TOUR-CHINACOTA-3.jpg',
        'https://cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/JUUVPGTSWVKXTP4S5ESBRE3HXY.jpg',
        'https://corpomixnds.sfo3.digitaloceanspaces.com/chinacota/12.jpeg',
        'https://cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/K3RKRBCT35D73LYCJSWCX33ZSY.jpg',
      ],
      rating: 4.9,
      numReviews: 1789,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p7',
          name: 'Entre Flores',
          latLng: LatLng(7.4940906,-72.5722943),
          description:
              'GLAMPING 🏕 RESTAURANTE CAMPESTRE espacio mágico creado para vivir tus mejores momentos..Ven y vive',
        ),
        PointOfInterest(
          id: 'p8',
          name: 'Páramo de Mejué',
          latLng: LatLng(7.4940906,-72.5722943),
          description:
              'El Municipio de Chinácota presenta un área de páramo y subpáramo con una extensión de 105,54 Has. Se encuentra ubicada en la parte sur del municipio (en la vereda Iscalá Sur), denominada como Alto de Mejué, que limita con el municipio de Toledo',
        ),
        PointOfInterest(
          id: 'p9',
          name: 'Cerro de las 3 cruces',
          latLng: LatLng(7.5527325,-72.5884821),
          description:
              'las tres cruces, panorámicas espectaculares,brisa y hace frío',
        ),
      ],
    ),
    Destination(
      id: '4',
      name: 'Bochalema',
      latLng: LatLng(7.614129,-72.6478413),
      description: 'Además de este majestuoso árbol de alrededor de 20 metros de altura, cerca de la plaza principal, está el Templo Parroquial Sagrado Corazón de Jesús. En este Templo de estilo romano, se celebran varias festividades y entre ellas, la patronal al Sagrado Corazón de Jesús y a la señora de la Cueva Santa',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt5RXPHHqxI5Jw7FIF-oJzrBTuIi93tvaPXUEzBH0tCQ&s',
      additionalImages: [
        'https://www.esariri.com/wp-content/uploads/2022/09/Termales-del-Raizon-Municipio-de-Bochalema-Norte-de-Santander-2.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRecetGqkMQ28jxXsEyX-4Es-rSvGXMDvEr5AVMai3QHw&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTPais63j58eiRTsrzQ-uSylox2n_6RKJMYG4imaBMzA&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu5C8jBGsau8nw73UZulqHrmDoLyKSmcS_ao0JuQ-STg&s',
      ],
      rating: 4.6,
      numReviews: 1890,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p10',
          name: 'Termales Raizon Bochalema',
          latLng: LatLng(7.6526193,-72.6158627),
          description:
              'Las aguas termales Bochalema en Norte Santander, se encuentran a 45 minutos de Cúcuta.',
        ),
        PointOfInterest(
          id: 'p11',
          name: 'Parque',
          latLng: LatLng(7.6109474,-72.6479528),
          description:
              'Ubicado en el parque principal del pueblo, este árbol es visitado por los turistas, quienes se sienten atraídos por su particular forma y tamaño ',
        ),
        PointOfInterest(
          id: 'p12',
          name: 'Sendero ecológico AguaBlanca',
          latLng: LatLng(7.609215,-72.6506394),
          description:
              'Es un sendero ecológico grande, es importante que lleven ropa que cubra de los mosquitos y repelente, además, es bueno que lleven ropa para bañarse',
        ),
      ],
    ),
    Destination(
      id: '5',
      name: 'villa del rosario',
      latLng: LatLng(7.8510555,-72.51113),
      description: 'Localizado a 7 km de la capital del departamento con una temperatura media de 26 °C.Este municipio presenta uno de los legados históricos mas importantes de Colombia: Las ruinas del Templo del Congreso de 1821, La Casa Natal del General Santander, Las ruinas de la Capilla Santa Ana, La Casa La Bagatela, y el Tamarindo Histórico, que han sido consagrados monumentos Nacionales, conforman un asombroso complejo histórico.',
      imageUrl:
          'https://cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/US5ANAHGOVMSTGSJ4T6AK2SABE.jpg',
      additionalImages: [
        'https://images.mnstatic.com/00/c2/00c2dcaaa57cb29d65c945c64b75a76c.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/f/f5/Basilica_Menor_Nuestra_Sra_del_Rosario.jpg',
        'https://media.viajando.travel/p/c385ace5c3c094ce0fd514f8b4b156cc/adjuntos/236/imagenes/000/680/0000680781/1200x675/smart/villa-del-rosario1jpeg.jpeg',
        'https://www.laopinion.co/sites/default/files/2022-10/PIEDRA%20ROSARIO%20%285%29%201.jpg',
      ],
      rating: 4.8,
      numReviews: 1523,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p13',
          name: 'Templo Histórico Villa del Rosario',
          latLng: LatLng(7.8380383,-72.4842634),
          description:
              'es un sitio histórico donde se redactó y firmó la primera constitución de Colombia. Está ubicado en la ciudad de Villa del Rosario en el área metropolitana de Cúcuta, y muy cerca de la frontera con Venezuela.',
        ),
        PointOfInterest(
          id: 'p14',
          name: 'Casa Natal del General Santander',
          latLng: LatLng(7.8341063,-72.4699721),
          description:
              'La Casa Natal del General Santander es la casa natal del General colombiano Francisco de Paula Santander, y es donde vivió hasta los 13 años. ',
        ),
        PointOfInterest(
          id: 'p15',
          name: 'Palmas Golf',
          latLng: LatLng(7.8427282,-72.4710749),
          description:
              'En Palma Golf podrás aprender y practicar el mejor deporte del mundo ⛳, en un ambiente seguro y familiar 💫 con todos los protocolos de bioseguridad necesarios',
        ),
      ],
    ),
     Destination(
      id: '6',
      name: 'salazar de las palmas',
      latLng: LatLng(7.7727966, -72.8143143),
      description: 'Localizado a 7 km de la capital del departamento con una temperatura media de 26 °C.Este municipio presenta uno de los legados históricos mas importantes de Colombia: Las ruinas del Templo del Congreso de 1821, La Casa Natal del General Santander, Las ruinas de la Capilla Santa Ana, La Casa La Bagatela, y el Tamarindo Histórico, que han sido consagrados monumentos Nacionales, conforman un asombroso complejo histórico.',
      imageUrl:
          'https://cloudfront-us-east-1.images.arcpublishing.com/semana/3QVZNJMKGFGS5OILY5ONYH2QBY.jpg',
      additionalImages: [
        'https://upload.wikimedia.org/wikipedia/commons/4/47/Salazar_de_las_Palmas_NdeS.jpeg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmqoLbHX-OjpPcWwmHsV4VbgrUz2AygayyBCy_MclTtA&s',
        'https://visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA',
        'https://salazarcunadelcafe.wordpress.com/wp-content/uploads/2019/04/las-pailas.jpg?w=768',
      ],
      rating: 4.8,
      numReviews: 1523,
      pointsOfInterest: [
        PointOfInterest(
          id: 'p13',
          name: 'Cañon de Las Pailas ',
          latLng: LatLng(5.0858855,-81.790196),
          description:
              's un Pasaje profundo, estrecho y rocoso formado por un largo tiempo de erosión. Este se encuentra a aproximadamente 30 minutos del monumento de la Virgen (Ver Mapa Abajo) o del Sector conocido como la Purísima',
        ),
        PointOfInterest(
          id: 'p14',
          name: 'Los Siete Chorros',
          latLng: LatLng(7.7703736,-72.8269734),
          description:
              'En un tibio paraje, el agua helada refresca a los caminantes que se atreven a pasar bajo las siete regaderas.',
        ),
        PointOfInterest(
          id: 'p15',
          name: 'Parque Principal salazar',
          latLng: LatLng(7.7732356,-72.8130289),
          description:
              'El parque principal de Salazar de las Palmas está poblado por 85 palmas de diferentes tamaños.',
        ),
      ],
    ),
  ];
}

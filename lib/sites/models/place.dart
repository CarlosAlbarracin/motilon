import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong2/latlong.dart';
class TravelPlace {
  TravelPlace({
    required this.name,
    required this.subtitle,
    required this.imagesUrl,
    this.id = '',
    this.description = '',
    this.locationDesc = '',
    required this.latLng, 
    this.statusTag = StatusTag.popular,
    
    this.isFavorite = false,
    required this.items,

   
  });

  final String id;
  final String name;
  final String subtitle;
  final LatLng latLng;
  final StatusTag statusTag;
  
  bool isFavorite; 
  final String locationDesc;
  final String description;
  final List<String> imagesUrl;
  final String items;
   static List<TravelPlace> getFavoritePlaces(List<TravelPlace> places) {
    return places.where((place) => place.isFavorite).toList();
  }
 factory TravelPlace.fromFirestore(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;

    return TravelPlace(
      id: data['id'].toString(),
      name: data['name'].toString(),
      subtitle: data['subtitle'].toString(),
      description: data['description'].toString(),
      items: data['items'].toString(),
      latLng: data['latLng'],
      imagesUrl: List<String>.from(data['imagesUrl'] ?? []),
      locationDesc: data['locationDesc'].toString(),
      isFavorite: data['isFavorite'] ?? false, 
    );
  }

  static final place = [
    
    TravelPlace(
      id: '1',
      name: 'Hotel Casino',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
         'El hotel Casino Internacional se encuentra en Cúcuta, justo frente al centro comercial Ventura. '
          'Ofrece una piscina al aire libre, sauna, gimnasio, conexión Wi-Fi gratuita y un cóctel de bienvenida. '
         
          'Las habitaciones del Hotel Casino Internacional presentan una decoración elegante e incluyen aire acondicionado',
      imagesUrl: [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/1a/1d/56/hotel-casino-internacional.jpg?w=700&h=-1&s=1',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/423481157.jpg?k=bc347d4e03075a7667d3c0cf00adcfc09ce87fc97827298569e0fd982e4ca64c&o=&hp=1',
        'https://content.r9cdn.net/rimg/kimg/b3/6e/216dcdaf-5acdc0d0-0.jpg?width=440&height=220&crop=false'
      ],
      items:'-wifi - tv plana' ' - Aire Acondicionado'
      ' - Baño privado',
      locationDesc: 'Cucuta, Norte de Santander',
      latLng: LatLng(7.887133,-72.4981937),
    ),
    TravelPlace(
      id: '2',
      name: 'Hotel Villa nico',
      subtitle: 'Bochalema',
      isFavorite: false,
      description:
          'Villa Nico hospedaje campestre se encuentra en Bochalema, a 42 km de Ecoparque Comfanorte, y ofrece servicio de check-in y check-out exprés '
          'habitaciones libres de humo, restaurante, wifi gratis en todo el alojamiento y piscina '
         
          'al aire libre. Este alojamiento ofrece centro de fitness, jardín y terraza.',
      imagesUrl: [
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/446287272.jpg?k=f40a49dea1bdaaa4c645faa2a3d5a895cb157ba779720ac59435c61250e6dddd&o=&hp=1',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/483174337.jpg?k=560adf8766e9834bbbfd7e9e0664dc505034db37350dd7645c0a92c2b63a2341&o=&hp=1',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/417024951.jpg?k=7f6287033e098dacffa0f84e0f53eda823073c4450904be2c36a7052cd4c97a9&o=&hp=1'
      ],
      statusTag: StatusTag.event,
     items:'-wifi''/n - tv plana',
      locationDesc: 'Bochalema, Norte de Santander',
      latLng: LatLng(7.3720218, -72.6678032),
    ),
    TravelPlace(
      id: '3',
      isFavorite: false,
      name: 'Hotel By hilton',
      subtitle: 'Cucuta',
      description:
          'Estamos a solo minutos del centro de Cúcuta y de los parques industriales. En Ventura Plaza, a ½ mi/0,8 km al norte, encontrará muchos restaurantes, tiendas y distracciones. También nos encontramos a una distancia corta a pie de una variedad de restaurantes y de la Universidad Simón Bolívar.',
      imagesUrl: [
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486129069.jpg?k=5ef5c8736b6c2bf61d37517de4a0f81813416faefd9216360f1ec5a8135acc09&o=&hp=1',
        'https://www.hilton.com/im/en/CUCCOHX/7997555/-duf6293-v-ok.jpg?impolicy=crop&cw=7102&ch=3976&gravity=NorthWest&xposition=0&yposition=381&rw=768&rh=430',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486129070.jpg?k=7e8b23218052bc47b4457829bc99c88412620c94b2571c4df881af2cbecb71d2&o=&hp=1'
      ],
      statusTag: StatusTag.event,
      items:'-wifi''/n - tv plana',
      locationDesc: 'Cucuta, Norte de Santander',
      latLng: LatLng(7.3720218, -72.6678032),
    ),
    TravelPlace(
      id: '4',
      name: 'Hotel Hontibon',
      subtitle: 'Pamplona',
      isFavorite: false,
      description:
          'Hotel Hontibon es una magnífica elección para los viajeros que visiten Pamplona, ya que ofrece numerosos servicios diseñados para mejorar tu estancia.'
          'El hotel pequeño tiene servicio de habitaciones y podrás estar conectado durante tu estancia, ya que Hotel Hontibon ofrece wifi gratuito a los huéspedes.'
          ,
      imagesUrl: [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/9a/99/a8/hotel-hontibon.jpg?w=700&h=-1&s=1',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/424380776.jpg?k=d2b858f7fc6766c30453cd8f499d0a508b7dde99044570e24883df7f07899cdf&o=&hp=1',
        'https://y.cdrst.com/foto/hotel-sf/d7f10/granderesp/hotel-hontibon-habitacion-f8b4aa4.jpg'
      ],
      statusTag: StatusTag.event,
      items:'-wifi''- tv plana',
      locationDesc: 'Pamplona, Norte de Santander',
      latLng: LatLng(7.3720218, -72.6678032),
    ),
    TravelPlace(
      id: '5',
      name: 'Hotel Villa',
      subtitle: 'Villa del Rosario',
      isFavorite: false,
      description:
          ' Hotel Villa del Rosario Nuevo está en Melgar, a 7,8 km de Piscilago, y dispone de alojamiento con restaurante, parking privado gratis, bar y salón de uso común '
          ' El hotel tiene bañera de hidromasaje, recepción 24 horas y wifi gratis en todo el alojamiento. '
          ' Las unidades de este alojamiento están equipadas con TV de pantalla plana. En el hotel, las habitaciones disponen de aire acondicionado y baño privado.',
      imagesUrl: [
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/326619542.jpg?k=619862f32bdd42c8236023d8f2d768c72bf8e85a43d4274a495094479009be77&o=&hp=1',
        'https://i0.wp.com/tintatic.com/wp-content/uploads/2022/03/20220329_Cacota-parque-principal-e-iglesia_4280-scaled.jpg?fit=1280%2C960&ssl=1',
        'https://visitcucuta.com/wp-content/uploads/2020/01/Tour-Cacota-Norte-de-Santander-turismo-2022-2023-2024-5-e1648091564569.jpg'
      ],
      statusTag: StatusTag.event,
      items:'-wifi''/n - tv plana',
      locationDesc: 'Villa del Rosario, Norte de Santander',
      latLng: LatLng(7.3720218, -72.6678032),
    ),
    TravelPlace(
      id: '6',
      name: 'Hotel Victoria Plaza Millenium',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
          'Hotel Victoria Plaza Millenium se encuentra en Cúcuta, a menos de 1 km de Biblioteca Pública de Cucuta, y ofrece alojamiento con restaurante, parking privado gratis, piscina al aire libre y jardín.'
          'El alojamiento dispone de recepción 24 horas, servicio de traslado, servicio de habitaciones y wifi gratis.'
          'En el hotel, cada habitación tiene escritorio. Todas las unidades del alojamiento tienen baño privado con ducha y artículos de aseo gratuitos, además de TV de pantalla plana y aire acondicionado. ',
      imagesUrl: [
        'https://cf.bstatic.com/xdata/images/hotel/max500/490607394.jpg?k=9566ecdf8cc44217ac49571ea13e006331e5262150f047bd5ca45af2a82d360b&o=&hp=1',
        'https://images.trvl-media.com/lodging/42000000/41920000/41915100/41915043/28524655.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/332524913.jpg?k=164d7e27ea19fb9b066f088b6dfcb024f8e2d8a41eef93a968ae13191facb415&o=&hp=1'
      ],
      statusTag: StatusTag.event,
      items:'-wifi''/n - tv plana',
      locationDesc: 'Cucuta, Norte de Santander',
      latLng: LatLng(7.3720218, -72.6678032),
    ),
    TravelPlace(
      id: '7',
      name: 'Hotel Arizona ',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
          'Hotel Arizona Suites, es un referente obligado de la hotelería de excelencia en la ciudad de Cúcuta. 70 bellas, funcionales y amplias habitaciones y suites, todas con vista'
          'Su especial arquitectura da frescura a los espacios que permiten disfrutar del clima cálido de la ciudad, conformando así un entorno en el que la piscina y las zonas húmedas ocupan un lugar central para la diversión'
          '',
      imagesUrl: [
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/95382644.jpg?k=222007e6f4ad3325849adf12315fa680fdc62c353b5212eb239610c36854aedc&o=&hp=1',
        'https://hotelarizonasuites.com/wp-content/uploads/2017/04/slide-piscina.jpg',
        'https://x.cdrst.com/foto/hotel-sf/74faa/granderesp/hotel-arizona-suites-cucuta-servicios-11f3a7c4.jpg'
      ],
      statusTag: StatusTag.event,
      items:'-wifi''/n - tv plana',
      locationDesc: 'Cucuta, Norte de Santander',
      latLng: LatLng(7.3720218, -72.6678032),
    ),
    
  ];
  /*static final collectionPlaces = [
    TravelPlace(
      name: 'San Miguel de Allende',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://www.viajarenverano.com/wp-content/uploads/2019/02/Labateca-Plaza.jpg'
      ],
      items:'-wifi''/n - tv plana',
    ),
    TravelPlace(
      name: 'Chichen Itza',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Piscina_Durania_norte-de-santander.jpg'
      ],
      items:'-wifi''/n - tv plana',
    ),
    TravelPlace(
      name: 'Ciudad de Mexico',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      items:'-wifi''/n - tv plana',
    ),
    TravelPlace(
      name: 'Teotihuacan',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-11.jpg?resize=820%2C615&ssl=1'
      ],
      items:'-wifi''/n - tv plana',
    ),
    TravelPlace(
      name: 'Taxco',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://images.unsplash.com/photo-1595781514079-2abd0a36f892?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=60'
      ],
      items:'-wifi''/n - tv plana',
    ),
    TravelPlace(
      name: 'Acapulco',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://radionacional-v3.s3.amazonaws.com/s3fs-public/styles/portadas_relaciona_4_3/public/node/article/field_image/whatsapp_image_2019-11-29_at_3.23.28_pm.jpeg?h=7b436a88&itok=THRV4iyb'
      ],
     items:'-wifi''/n - tv plana',
    ),
  ];*/
}

class TravelUser {
  TravelUser(this.name, this.urlPhoto);

  final String name;
  final String urlPhoto;

  static TravelUser lili = TravelUser('Descripcion',
      'https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60',);
  static TravelUser alex = TravelUser('Alex Fernandez',
      'https://images.unsplash.com/photo-1589304038421-449708a42983?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',);
  static TravelUser mario =
      TravelUser('Mario Calzada', 'https://i.ibb.co/c1j1VDT/yo.jpg');
  static TravelUser luna = TravelUser('Luna Benioly',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',);
  static TravelUser javier = TravelUser('Javier',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',);

  
}

enum StatusTag { popular, event }

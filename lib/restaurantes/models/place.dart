import 'package:cloud_firestore/cloud_firestore.dart';
class RestaurantPlace {
  RestaurantPlace({
    required this.name,
    required this.subtitle,
    required this.imagesUrl,
    this.id = '',
    this.description = '',
    this.locationDesc = '',
    this.statusTag = StatusTag.popular,
    
    this.isFavorite = false,

   
  });

  final String id;
  final String name;
  final String subtitle;

  final StatusTag statusTag;
  
  bool isFavorite; 
  final String locationDesc;
  final String description;
  final List<String> imagesUrl;
   static List<RestaurantPlace> getFavoritePlaces(List<RestaurantPlace> places) {
    return places.where((place) => place.isFavorite).toList();
  }
 factory RestaurantPlace.fromFirestore(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;

    return RestaurantPlace(
      id: data['id'].toString(),
      name: data['name'].toString(),
      subtitle: data['subtitle'].toString(),
      description: data['description'].toString(),
      imagesUrl: List<String>.from(data['imagesUrl'] ?? []),
      locationDesc: data['locationDesc'].toString(),
      isFavorite: data['isFavorite'] ?? false,
    );
  }

  static final placeR = [
    
    RestaurantPlace(
      id: '1',
      name: 'La granja ',
      subtitle: 'Chinacota',
      isFavorite: false,
      description:
         'Sumérgete en un ambiente Divertido y Acogedor mientras disfrutas de tu comida y un buen cafe ☕️ rodeado de la tranquilidad y la belleza de la naturaleza. '
         
         
         ,
      imagesUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnjVAuRgCKyh3a3gHOdwQtYQF_AudcwLitfg&s',
        'https://media-cdn.tripadvisor.com/media/photo-m/1280/14/14/8d/f2/grandes-zonas-verdes.jpg',
        'https://img.restaurantguru.com/re69-facade-La-Granja-Chinacota-2022-09-2.jpg'
      ],
      
      locationDesc: 'Chinacota, Norte de Santander',
    ),
    RestaurantPlace(
      id: '2',
      name: 'Spezia',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
          'Sumérgete en una fusión de camarones jugosos, pulpo tierno, falso caviar de la más alta calidad y cortes frescos que deleitarán tus sentidos.'
    ,
      imagesUrl: [
        'https://cucutalinda.com/wp-content/uploads/2021/03/speziarestaurante_166973897_669570920424760_6584242997101923299_n.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/08/af/eb/a7/spezia-restaurante-cucuta.jpg',
        'https://cucutalinda.com/wp-content/uploads/2021/03/speziarestaurante_123496385_2756092714648060_1763187700080345695_n.jpg'
      ],
      statusTag: StatusTag.event,
     
      locationDesc: 'Cucuta, Norte de Santander',
    ),
    RestaurantPlace(
      id: '3',
      isFavorite: false,
      name: 'La Mansion',
      subtitle: 'Ocaña',
      description:
          'La Mansión es un precioso y elegante restaurante disponible para la celebración de todo tipo de eventos sociales, siendo una gran alternativa para esos enamorados que están en plena organización de su matrimonio'
          'Al contratar este lugar tendrán la seguridad de que será una velada mágica.',
      imagesUrl: [
        'https://media-cdn.tripadvisor.com/media/photo-s/14/3c/4b/c9/el-mejor-restaurante.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/14/3c/4b/da/el-mejor-restaurante.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/14/3c/4b/c3/el-mejor-restaurante.jpg'
      ],
      statusTag: StatusTag.event,
      
      locationDesc: 'Ocaña, Norte de Santander',
    ),
    RestaurantPlace(
      id: '4',
      name: 'Molinito',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
          'Hoy como siempre, continúa ofreciendo una exquisita comida gourmet, destacándose por su cocina mediterránea, pescados, mariscos y los mas selectos y deliciosos cortes de carnes a la parrilla.'
          'El Molinito cuenta con la mejor atención, amplia cava de vinos, licores, cocteles, jugos de frutas exóticas y tropicales y sin lugar a dudas es uno de los sitios mas agradables de la ciudad'
          ,
      imagesUrl: [
        'https://media-cdn.tripadvisor.com/media/photo-s/03/00/01/6b/restaurante-el-molinito.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcAF3C1phAaDyOrB-k4N9P2JBQidGifOoZ2w&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOthXvnCO0NSlW4Eds9zZreNzs2BJTC4rPBw&s'
      ],
      statusTag: StatusTag.event,
      
      locationDesc: 'Cucuta, Norte de Santander',
    ),
    RestaurantPlace(
      id: '5',
      name: 'La provincia',
      subtitle: 'Ocaña',
      isFavorite: false,
      description:
          'Un rinconcito muy nuestro '
          
          ,
      imagesUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIzpYL1XlgycNvHBz5Ji0hnHGtuB9ucS9VLA&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTreQH2CAltQIAT7jhc9IDg1dfNQnFSCMpqGQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVovKMuNQhqAbe8s0mSquWp9-7Vd0saiotew&s'
      ],
      statusTag: StatusTag.event,
      
      locationDesc: 'Ocaña, Norte de Santander',
    ),
    RestaurantPlace(
      id: '6',
      name: 'Ank',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
          'Restaurante espacioso y tranquilo que sirve comida casera, carnes, vino y cócteles.'
         ,
      imagesUrl: [
        'https://media-cdn.tripadvisor.com/media/photo-s/0d/a7/02/02/vivelo-de-noche.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbstaZfDbTlkydBEt8hE_NoWky-7H1SZrxlA&s',
        'https://media-cdn.tripadvisor.com/media/photo-s/07/64/3c/de/an-k-restaurante.jpg'
      ],
      statusTag: StatusTag.event,
      
      locationDesc: 'Cucuta, Norte de Santander',
    ),
    RestaurantPlace(
      id: '7',
      name: 'RAncho y Leña ',
      subtitle: 'Cucuta',
      isFavorite: false,
      description:
          'En Rancho y Leña ya se vive la mejor época del año ,ven a visitarnos y encontrarás el mejor ambiente familiar junto con shows de baile y mucho más .'
          
          '',
      imagesUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwROCdOi5WAcNCtJta-39iXl1ngqAGd_I2Eg&s',
        'https://cucutalinda.com/wp-content/uploads/2021/03/ranchoylena_92324352_1499594916885673_5232087684211674257_n.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOWRHrraKjYzWqLtvOn8ZVRdG7ReYXhFgsTQ&s'
      ],
      statusTag: StatusTag.event,
      
      locationDesc: 'Cucuta, Norte de Santander',
    ),
    
  ];
  static final collectionPlaces = [
    RestaurantPlace(
      name: 'San Miguel de Allende',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://www.viajarenverano.com/wp-content/uploads/2019/02/Labateca-Plaza.jpg'
      ],
      
    ),
    RestaurantPlace(
      name: 'Chichen Itza',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Piscina_Durania_norte-de-santander.jpg'
      ],
      
    ),
    RestaurantPlace(
      name: 'Ciudad de Mexico',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      
    ),
    RestaurantPlace(
      name: 'Teotihuacan',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-11.jpg?resize=820%2C615&ssl=1'
      ],
      
    ),
    RestaurantPlace(
      name: 'Taxco',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://images.unsplash.com/photo-1595781514079-2abd0a36f892?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=60'
      ],
      
    ),
    RestaurantPlace(
      name: 'Acapulco',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://radionacional-v3.s3.amazonaws.com/s3fs-public/styles/portadas_relaciona_4_3/public/node/article/field_image/whatsapp_image_2019-11-29_at_3.23.28_pm.jpeg?h=7b436a88&itok=THRV4iyb'
      ],
     
    ),
  ];
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

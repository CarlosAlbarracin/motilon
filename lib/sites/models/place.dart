class TravelPlace {
  TravelPlace({
    required this.name,
    required this.subtitle,
    required this.user,
    required this.imagesUrl,
    this.id = '',
    this.description = '',
    this.locationDesc = '',
    this.statusTag = StatusTag.popular,
    this.shared = 0,
    this.likes = 0,
  });

  final String id;
  final String name;
  final String subtitle;
  final TravelUser user;
  final StatusTag statusTag;
  final int shared;
  final int likes;
  final String locationDesc;
  final String description;
  final List<String> imagesUrl;

  static final place = [
    TravelPlace(
      id: '1',
      name: 'Chinacota',
      subtitle: 'Chinacota',
      likes: 500,
      shared: 240,
      description:
          'Chinacota tierra merecedora de ser considerada "La Casa de Todos" gracias a la belleza de sus paisajes,'
          'donde la naturaleza se conjuga en esencial armonia con los paraisos de descanso y recreacion que posee. Al ingresar al municipio se puede observar como este es un inmenso jardin, '
          'repleto de multiples colores que dan vida y hermosura a cada lugar',
      imagesUrl: [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/e3/1e/21/hotel-y-centro-de-convenciones.jpg?w=500&h=300&s=1',
        'https://visitcucuta.com/wp-content/uploads/2020/11/TOUR-CHINACOTA-3.jpg',
        'https://turismoi.co/uploads/co/photo/photo_file/14491/IMG_20201015_154518.jpg'
      ],
      user: TravelUser.alex,
      locationDesc: 'Chinacota, Norte de Santander',
    ),
    TravelPlace(
      id: '2',
      name: 'Pamplona',
      subtitle: 'Pamplona',
      likes: 140,
      shared: 49,
      description:
          'Pamplona es un municipio ubicado en el departamento de Norte de Santander, Colombia.  '
          'Es conocido por su arquitectura colonial y su hermoso centro histórico. La ciudad está rodeada de montañas y cuenta con un clima agradable. '
          ' del mar Caribe.'
          'Pamplona es reconocida por ser cuna de importantes personajes históricos y culturales, y también es famosa por su tradicional Festival de las Colonias, en el que se celebran las diferentes culturas presentes en la región.',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Pamplona_norte-de-santander.jpg',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/f0/c3/ba/cariongo-plaza-hotel.jpg?w=600&h=400&s=1',
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Pamplona, Norte de Santander',
    ),
    TravelPlace(
      id: '3',
      likes: 29,
      shared: 40,
      name: 'ocaña',
      subtitle: 'Ocaña',
      description:
          ''' Ocaña es un municipio ubicada en el departamento de Norte de Santander, en Colombia. Es reconocida por su riqueza histórica y cultural. En Ocaña se encuentran numerosos monumentos y sitios de interés, como la Catedral Basílica Menor de Nuestra Señora del Carmen, el Templo de Santa Clara y el Museo de la Memoria Histórica. La ciudad también es famosa por sus festividades religiosas y culturales, como la Semana Santa y el Festival Folclórico y Reinado Nacional del Bambuco.''',
      imagesUrl: [
        'https://ocanansantander.files.wordpress.com/2011/10/rosangela-castro.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Oca%C3%B1a_-_panoramio_%281%29.jpg/600px-Oca%C3%B1a_-_panoramio_%281%29.jpg',
        'https://radionacional-v3.s3.amazonaws.com/s3fs-public/styles/portadas_relaciona_4_3/public/node/article/field_image/whatsapp_image_2019-11-29_at_3.23.28_pm.jpeg?h=7b436a88&itok=THRV4iyb'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.luna,
      locationDesc: 'Ocaña, Norte de Santander',
    ),
    TravelPlace(
      id: '4',
      name: 'Cucuta',
      subtitle: 'Cucuta',
      shared: 500,
      likes: 39,
      description:
          'Cúcuta es la capital del departamento de Norte de Santander, Colombia. Es una ciudad fronteriza, limitando con Venezuela. Cúcuta es reconocida como un importante centro comercial y de negocios, con una amplia oferta de servicios y actividades económicas.'
          'La ciudad cuenta con una rica historia, con monumentos y sitios de interés como la Catedral de San José y el Puente Internacional Simón Bolívar.'
          'Además, es conocida por su festival anual de la Cumbia, una de las danzas más representativas de la región',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Loma-de-Bolivar.jpg',
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2020/03/CERRO-JESUS-NAZARENO-2.jpg?resize=768%2C563&ssl=1',
        'https://cloudfront-us-east-1.images.arcpublishing.com/semana/M3UIM2P4HZCNVIWQFLTBF5BPLA.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.lili,
      locationDesc: 'Cucuta, Norte de Santander',
    ),
    TravelPlace(
      id: '5',
      name: 'Cacota',
      subtitle: 'Cacota',
      likes: 140,
      shared: 49,
      description:
          ' Cácota es un municipio situado en el departamento de Norte de Santander, Colombia. Es conocido por su hermoso entorno natural, con paisajes montañosos y una gran diversidad de flora y fauna. '
          ' El municipio cuenta con varios atractivos turísticos, como el Parque Natural Regional El Tamá y la Laguna de Cácota. '
          ' Además, en Cácota se celebra la Fiesta de San Pedro, una tradición popular en la que se realizan procesiones y actividades culturales',
      imagesUrl: [
        'https://vamosllegando.com/wp-content/uploads/2022/07/cacota-norte-de-santander-como-llegar-desde-cucuta-desde-pamplona.jpg',
        'https://i0.wp.com/tintatic.com/wp-content/uploads/2022/03/20220329_Cacota-parque-principal-e-iglesia_4280-scaled.jpg?fit=1280%2C960&ssl=1',
        'https://visitcucuta.com/wp-content/uploads/2020/01/Tour-Cacota-Norte-de-Santander-turismo-2022-2023-2024-5-e1648091564569.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Cacota, Norte de Santander',
    ),
    TravelPlace(
      id: '6',
      name: 'Bochalema',
      subtitle: 'Bochalema',
      likes: 140,
      shared: 49,
      description:
          'Bochalema es un municipio colombiano ubicado en el departamento de Norte de Santander. Es reconocido por su producción agrícola, especialmente de caña de azúcar y productos derivados. '
          ' Bochalema cuenta con hermosos paisajes rurales, con extensas plantaciones y montañas. '
          'El municipio también es famoso por su festival anual de la Caña de Azúcar, en el que se realizan desfiles, muestras gastronómicas y actividades culturales.',
      imagesUrl: [
        'https://visitcucuta.com/wp-content/uploads/2020/03/DESTINO-TURISTICO-BOCHALEMA-5.jpg',
        'https://cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/KJJ33Z72KNKHXBTYFO53HEN3PM.jpg',
        'https://colombiaextraordinaria.com/somos_colombia/external/img/img_departamentos/Bochalemaimagen_ce.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Bochalema, Norte de Santander',
    ),
    TravelPlace(
      id: '7',
      name: 'Villa del Rosario',
      subtitle: 'Villa del Rosario',
      likes: 140,
      shared: 49,
      description:
          'Villa del Rosario es una localidad situada en el departamento de Norte de Santander, Colombia. Es reconocida por su importancia histórica como cuna de la independencia de Colombia.'
          'En este municipio se encuentra el Santuario de Nuestra Señora de la Laja, un importante lugar de peregrinación. Villa del Rosario cuenta también con un hermoso centro histórico, con calles empedradas y casas coloniales. '
          ' Además, es conocida por sus festividades religiosas y tradiciones culturales.',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Templo_Historico_Cucuta.jpg',
        'https://cdn.municipios.com.co/fotos/849-2017-09-15-20-59-636-L.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIEVn2NbQs867Z069m608Qow_2ytIhJdlfng&usqp=CAU'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'villa del Rosario, Norte de Santander',
    ),
    TravelPlace(
      id: '8',
      name: 'Salazar',
      subtitle: 'salazar',
      likes: 140,
      shared: 49,
      description:
          'Salazar es un municipio situado en el departamento de Norte de Santander, Colombia. Es conocido por su producción agrícola, en particular de café y productos lácteos.'
          'Salazar cuenta con un hermoso entorno natural, con montañas y ríos. Además, en el municipio se celebran festividades como la Feria Agropecuaria y Artesanal de Salazar y la Fiesta de la Empanada.'
          ,
      imagesUrl: [
        'https://visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-13-820x615.jpg.webp',
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-11.jpg?resize=820%2C615&ssl=1',
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Salazar, Norte de Santander',
    ),
    TravelPlace(
      id: '9',
      name: 'Durania',
      subtitle: 'Durania',
      likes: 140,
      shared: 49,
      description:
          'Durania es un municipio colombiano ubicado en el departamento de Norte de Santander. Se caracteriza por su belleza natural, con paisajes montañosos y una gran diversidad de flora y fauna. '
          'El municipio cuenta con varias cascadas y ríos, ideales para realizar actividades al aire libre como senderismo y ecoturismo. '
          'Durania también es reconocida por su producción de café y su festival anual del Café y la Guadua.',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Leon_estatua_durania.jpg',
        'https://turismonortedesantander.com/wp-content/uploads/Durania_norte-de-santander.jpg',
        'https://turismonortedesantander.com/wp-content/uploads/Piscina_Durania_norte-de-santander.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Durania, Norte de Santander',
    ),
    TravelPlace(
      id: '10',
      name: 'Labateca',
      subtitle: 'Labateca',
      likes: 14,
      shared: 49,
      description:
          'Labateca es un municipio colombiano ubicado en el departamento de Norte de Santander. Es reconocido por su belleza natural y su clima agradable.'
          'El municipio cuenta con paisajes montañosos y áreas protegidas, como el Parque Nacional Natural Tamá.'
          'Labateca también es conocida por su producción agrícola, en especial de café.',
      imagesUrl: [
        'https://visitcucuta.com/wp-content/uploads/2020/01/Cascada-de-Lirgua-1-820x615.jpg.webp',
        'https://visitcucuta.com/wp-content/uploads/2020/01/Municipio-de-Labateca-4-820x615.jpg.webp',
        'https://www.viajarenverano.com/wp-content/uploads/2019/02/Labateca-Plaza.jpg'
      ],
      
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Labateca, Norte de Santander',
    ),
  ];
  static final collectionPlaces = [
    TravelPlace(
      name: 'San Miguel de Allende',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://www.viajarenverano.com/wp-content/uploads/2019/02/Labateca-Plaza.jpg'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Chichen Itza',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Piscina_Durania_norte-de-santander.jpg'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Ciudad de Mexico',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Teotihuacan',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-11.jpg?resize=820%2C615&ssl=1'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Taxco',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://images.unsplash.com/photo-1595781514079-2abd0a36f892?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Acapulco',
      subtitle: 'Chinacota',
      imagesUrl: [
        'https://radionacional-v3.s3.amazonaws.com/s3fs-public/styles/portadas_relaciona_4_3/public/node/article/field_image/whatsapp_image_2019-11-29_at_3.23.28_pm.jpeg?h=7b436a88&itok=THRV4iyb'
      ],
      user: TravelUser.luna,
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

  static List<TravelUser> users = [alex, mario, luna, lili, javier];
}

enum StatusTag { popular, event }

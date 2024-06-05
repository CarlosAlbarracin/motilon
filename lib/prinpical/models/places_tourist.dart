import 'package:google_maps_flutter/google_maps_flutter.dart';



class PlacesTourist {
  final String id;
  final String nombre;
  final LatLng latLng;
  final String description;
  final String imageUrl;
  final List<String> additionalImages;
  final double rating;
  final int numReviews;


  const PlacesTourist({
    required this.id,
    required this.nombre,
    required this.latLng,
    required this.description,
    required this.imageUrl,
    required this.additionalImages,
    required this.rating,
    required this.numReviews,
    
  });

  @override
  String toString() {
    return 'PlacesTourist(id: $id, nombre: $nombre, latLng: $latLng, description: $description, imageUrl: $imageUrl, additionalImages: $additionalImages, rating: $rating, numReviews: $numReviews, )';
  }

  static const List<PlacesTourist> samplePlacesTourists = [
    PlacesTourist(
      id: '1',
      nombre: 'Aguas Termales',
      latLng: LatLng(7.6524026,-72.6199256),
      description: 'Las aguas termales Bochalema en Norte Santander, se encuentran a 45 minutos de Cúcuta. Esta experiencia en Norte de Santander se trata de unas aguas termales que son resultado del calentamiento del agua que circula por encima de una falla',
      imageUrl:
          'https://www.esariri.com/wp-content/uploads/2022/09/Termales-del-Raizon-Municipio-de-Bochalema-Norte-de-Santander-1.jpg',
      additionalImages: [
        'https://www.esariri.com/wp-content/uploads/2022/09/termales-3-e1579654852385.jpg',
        'https://www.esariri.com/wp-content/uploads/2022/09/termales-5-e1579655104447.jpg',
        'https://73b37bc153.cbaul-cdnwnd.com/e5bf13949ef603da55d50d588c89a711/200000022-afafdb0a9d/2.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSer45ZSAqbytnIBbk9jmLjt2Azvl_ZTsVwWl3wCIVLow&s',
      ],
      rating: 4.8,
      numReviews: 1589,
     
    ),
    PlacesTourist(
      id: '2',
      nombre: 'Museo Casa Natal del General Santander',
      latLng: LatLng(7.8337053,-72.4651149),
      description: 'La Casa Natal del General Santander es la casa natal del General colombiano Francisco de Paula Santander, y es donde vivió hasta los 13 años. Se encuentra en el municipio de Villa del Rosario en Cúcuta, a lo largo de la Carretera Internacional a Venezuela.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkysjvFWZ6RB1q4fw2Gz7nVE2JwW1Nf5jZikyEL_6BnQ&s',
      additionalImages: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkYM_RXipc1Xk-9MQ2VjrW_axKvSJCmA9FxrRhh3Etdw&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_DEuoW29OLun9CTI4kbVgO6zEiPcepf56TFBgnLpamw&s',
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhvvqQlO-tbY5PNhzBwMXDpeBzj5hsc8k388SRoTt2vKOT84Y08EObsTMfZ9c53mvBotjWe-1XqOjZx2NtnyRvd76LE1NO3zjuyBlQHaxDjZ7SLLxH4BoHfnSYAOcyybnSSTbjkGAAYoc5f/s1600/rosario1.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-ikifH7FU1QemLPdKmqZfveC72DseeAGT8f9cergWew&s',
      ],
      rating: 4.7,
      numReviews: 1390,
     
    ),
    PlacesTourist(
      id: '3',
      nombre: 'area natural los estoraques',
      latLng: LatLng(8.2200354,-73.3811461),
      description: 'El Área Natural Única (ANU) Los Estoraques fue declarada, alinderada y reservada mediante el Acuerdo No. 0031 del 26 de mayo de 1988 con una superficie aproximada de 662 ha. Posteriormente, en la resolución de ampliación del 5 de agosto de 2022, con No. 0850 del MADS, se modifica el área quedando con 1053 ha.',
      imageUrl:
          'https://www.parquesnacionales.gov.co/wp-content/uploads/2023/04/estoraques-1536x614.jpg',
      additionalImages: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPhspGrSmpFwF1xpIuBtF1CIMZBivA2qeyD7-RE34cEw&s',
        'https://ecoglobalexpeditions.com/wp-content/uploads/2017/07/Estoraques2w-1.jpg',
        'https://www.laopinion.co/sites/default/files/2021-03/Los-Estoraques.jpg',
        'https://altomira.co/wp-content/uploads/2017/05/estoraques-parques-nacionales-de-colombia-santander.jpg',
      ],
      rating: 4.9,
      numReviews: 1789,
     
    ),
    PlacesTourist(
      id: '4',
      nombre: 'Lago Park',
      latLng: LatLng(7.7725002,-72.5253617),
      description: 'Lago Park es un espacio natural ideal para todas aquellos interesados en disfrutar de un gran paisaje acompañado de la mejor comida nortesantandereana. Nos enfocamos en mejorar la vida de las personas a través de actividades al aire libre como cabalgatas, interacción con diferentes especies, navegación en canoa y muchos servicios más',
      imageUrl:
          'https://www.laopinion.co/sites/default/files/2016/03/01/imagen/lago.jpg',
      additionalImages: [
        'https://img.speisekarte.menu/storage/media/contributions/1759933/conversions/contribution_gallery.jpg',
        'https://www.laopinion.co/sites/default/files/2016/03/10/galer%C3%ADa/park2.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-lddXeNEQAtf5n_NivdMhNFAbCiwxHmszvzk_LdwHdA&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTbvt1TFm28dk5EVSxGQVT-bc-E0YuhNSLDTr8pLsNgLfCx1j80GaAvkolLu3-s9Dqz5c&usqp=CAU',
      ],
      rating: 4.6,
      numReviews: 1890,
     
    ),
    PlacesTourist(
      id: '5',
      nombre: 'Parque Natural Yaragua',
      latLng: LatLng(8.2131144,-73.2414418),
      description: 'Localizado a 7 km de la capital del departamento con una temperatura media de 26 °C.Este municipio presenta uno de los legados históricos mas importantes de Colombia: Las ruinas del Templo del Congreso de 1821, La Casa Natal del General Santander, Las ruinas de la Capilla Santa Ana, La Casa La Bagatela, y el Tamarindo Histórico, que han sido consagrados monumentos Nacionales, conforman un asombroso complejo histórico.',
      imageUrl:
          'https://lh3.googleusercontent.com/proxy/1zhB5SpPpS7VhmqaIWTJR6StAkcKehFjPqZIqgi1J0Ygpt1GgpPHQE-gTHoG7pTJ-9bJrD8IN-2uKoehznBEcA2dPoPYPCOXfN9-t_sE1EgmWqfXhCzEY-w_UgGAzni0ll9MzM5dXGi9n1chtQGaFsB7MYGPHNxQlw',
      additionalImages: [
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
        'https://images.unsplash.com/photo-1576485290814-1c72aa4bbb8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      ],
      rating: 4.8,
      numReviews: 1523,
   
    ),
  ];
}

class Place {
  final String imageUrl;
  final String country;
  final String city;
  final String description;
  final String event;
  bool isFavorite= false;

  Place({required this.city, required this.country, required this.description, required this.imageUrl, required this.event, this.isFavorite = false,});
 void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}

final places = [
  Place(
      imageUrl: "assets/chinacota.jpg",
      city: "chinacota",
      country: "Norte de Santander",
      description:
          "Chinácota es un municipio colombiano ubicado en el departamento de Norte de Santander.",
      event: ""),
  Place(
      imageUrl: "assets/ocana.jpg",
      city: "ocaña",
      country: "Norte de Santander",
      description:
          "Ocaña es un municipio colombiano ubicado en el departamento de Norte de Santander, al nororiente del país",
      event: ""),
  Place(
      imageUrl: "assets/pamplona.jpg",
      city: "Pamplona",
      country: "Norte de Santander",
      description:
          "Pamplona es un municipio colombiano, ubicado en el departamento de Norte de Santander. ",
      event: "Rio Carnival"),
        Place(
      imageUrl: "assets/cacota.jpg",
      city: "Cacota",
      country: "Norte de Santander",
      description:
          "Cácota es un municipio colombiano ubicado en la región sur-occidental del departamento de Norte de Santander. ",
      event: "Rio Carnival"),
        Place(
      imageUrl: "assets/bochalema.jpg",
      city: "Bochalema",
      country: "Norte de Santander",
      description:
          "Cácota es un municipio colombiano ubicado en la región sur-occidental del departamento de Norte de Santander. ",
      event: "Rio Carnival"),
];

final gastronomy = [
  Place(
      imageUrl: "assets/granja.jpg",
      city: "La granja",
      country: "Chinacota",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: "Rio Carnival"),
  Place(
      imageUrl: "assets/restauranteOcana.jpg",
      city: "La mansion",
      country: "Ocaña",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: "Sapporo Snow Festival"),
  Place(
      imageUrl: "assets/restauranteCucuta.jpg",
      city: "Molinito",
      country: "Cucuta",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: ""),
       Place(
      imageUrl: "assets/restRodizioCucuta.jpg",
      city: "Rodizio",
      country: "Cucuta",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: "g"),
       Place(
      imageUrl: "assets/restIrunaPamplona.jpg",
      city: "Iruña",
      country: "Pamplona",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: ""),

      
];

final events = [
  Place(
      imageUrl: "assets/rutaDurazno.png",
      city: "Ruta del Durazno y el Agua",
      country: "Chinacota",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: "Rio Carnival"),
  Place(
      imageUrl: "assets/rutaCafe.png",
      city: "Ruta del Cafe",
      country: "Ocaña",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: "Sapporo Snow Festival"),
  Place(
      imageUrl: "assets/rutaChitarero.png",
      city: "Los Caminos Chitareros",
      country: "Cucuta",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: ""),
       Place(
      imageUrl: "assets/rutaGranConvencion.png",
      city: "Ruta de la gran convencion",
      country: "Cucuta",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: "g"),
       Place(
      imageUrl: "assets/rutaCunaPatria.png",
      city: "La cuna de la Patria",
      country: "Pamplona",
      description:
          "Bali is famous for beaches,countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture withcolorfuls ceremonies and magnificent temples gifted artists the producing.",
      event: ""),

      
];

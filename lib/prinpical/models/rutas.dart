class Rutas {
  final String videoUrl;
  final String imageUrlR;
  final String titulo;
  final String descripcion;
  final List<String> pasos;
  final List<String> additionalImages;
 

  const Rutas({
    required this.videoUrl,
    required this.titulo,
    required this.descripcion,
    required this.pasos,
    required this.imageUrlR,
    required this.additionalImages,
    
  });

  static const List<Rutas> rutas = [
    Rutas(
      videoUrl: 'https://www.youtube.com/watch?v=zqZcf4_kSZY',
      imageUrlR:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD3ZBnMTWha9tyVo3Hs6uU3Mr7KH1x9UkdkAyOdsQJgg&s',
  titulo: 'Ruta del Durazno',
  descripcion: 'Partiendo de Pamplona, ciudad consentida por la neblina, se emprende esta fascinante travesía sintiendo la fresca brisa de los ríos Pamplonita y Chitagá hasta llegar a las gélidas montañas de Presidente. Oportunidad para contemplar la acolchada manta de tonos multicolores que ofrecen los cultivos de durazno y la feraz naturaleza. Región para extasiarse con admiración y afán por conocer su producción duraznera y la transformación que el cultivo ha aportado al bienestar de la provincia. Acompañados de las laboriosas manos de los campesinos productores de la fruta, hijos del sol radiante y compañeros del trinar de las aves, los viajeros conocerán todo acerca de su producción y beneficio. Las cantarinas aguas preceden el arribo a lugares colmados de paisajes inéditos: misteriosos páramos custodiados por las majestuosas espeletias en donde se encuentra las lagunas encantadas que paren los caudalosos ríos y quebradas que surcan la geografía nortesantandereana.',
  pasos: [
    'Paso 1: Laguna el Salado',
    'Paso 2: Cacota',
    'Paso 3: Pamplona',
   
  ],
   additionalImages: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUi7c_vsUFTzCyCTipjFvolYI11qdAfoR6AKYEbcHJAQ&s',
        'https://pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-DE-MERCADO-CUBIERTO-PAMPLONA.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT24RwCkhXK3VZh9NwEbNlc4aoA64KT3Usf-_Hnwgn9OQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_NtyCUDfxc3n9YJF_dQ4snwet8YgKH3ekxGqdz_egPg&s',
      ],
  ),
  Rutas(
      videoUrl: 'https://www.youtube.com/watch?v=gO0fRai1mg0',
      imageUrlR:'https://www.tudestinonortedesantander.com/wp-content/uploads/2018/11/ruta-2.png',
  titulo: 'Ruta del Cafe',
  descripcion: 'Salazar de las Palmas: tierra de paz y de leyendas tejidas por siglos de historia; de hermosas mujeres, gente amable y campesinos laboriosos. Los primeros cultivos de café en Coombia crecieron en la zona nororiental del país. En 1835 tuvo lugar la primera producción comercial y los registros muestran que los primeros 2.560 sacos se exportaron desde la aduana de Cúcuta',
  pasos: [
    '',
    '',
    '',
   
  ],
   additionalImages: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUi7c_vsUFTzCyCTipjFvolYI11qdAfoR6AKYEbcHJAQ&s',
        'https://pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-DE-MERCADO-CUBIERTO-PAMPLONA.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT24RwCkhXK3VZh9NwEbNlc4aoA64KT3Usf-_Hnwgn9OQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_NtyCUDfxc3n9YJF_dQ4snwet8YgKH3ekxGqdz_egPg&s',
      ],
  ),
   Rutas(
      videoUrl: 'https://youtu.be/iAGTAVWt0Fg',
      imageUrlR:'https://www.laopinion.co/sites/default/files/styles/portada_principal_747x420/public/2021-04/ruta-de-la-gran-convencion.jpg?itok=Dt7vqKim',
  titulo: 'Ruta de la Gran convencion',
  descripcion: 'Al norte del departamento, sobre las estribaciones de la cordillera Oriental y en medio de majestuosas montañas, colinas y valles, se levantan imponentes cinco municipios que son testigos gloriosos de uno de los acontecimientos más importantes de la historia republicana de la Nación: la Gran Convención de Ocaña',
  pasos: [
    'Abrego',
    'La Playa de Belén',
    'Ocaña',
    'El Carmen',
   
  ],
   additionalImages: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUi7c_vsUFTzCyCTipjFvolYI11qdAfoR6AKYEbcHJAQ&s',
        'https://pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-DE-MERCADO-CUBIERTO-PAMPLONA.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT24RwCkhXK3VZh9NwEbNlc4aoA64KT3Usf-_Hnwgn9OQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_NtyCUDfxc3n9YJF_dQ4snwet8YgKH3ekxGqdz_egPg&s',
      ],
  )
  ];
}

  /*static final rutas=[
    Rutas(
  videoUrl: 'https://www.youtube.com/watch?v=zqZcf4_kSZY',
  titulo: 'Ruta del Durazno',
  descripcion: 'Partiendo de Pamplona, ciudad consentida por la neblina, se emprende esta fascinante travesía sintiendo la fresca brisa de los ríos Pamplonita y Chitagá hasta llegar a las gélidas montañas de Presidente. Oportunidad para contemplar la acolchada manta de tonos multicolores que ofrecen los cultivos de durazno y la feraz naturaleza. Región para extasiarse con admiración y afán por conocer su producción duraznera y la transformación que el cultivo ha aportado al bienestar de la provincia. Acompañados de las laboriosas manos de los campesinos productores de la fruta, hijos del sol radiante y compañeros del trinar de las aves, los viajeros conocerán todo acerca de su producción y beneficio. Las cantarinas aguas preceden el arribo a lugares colmados de paisajes inéditos: misteriosos páramos custodiados por las majestuosas espeletias en donde se encuentra las lagunas encantadas que paren los caudalosos ríos y quebradas que surcan la geografía nortesantandereana.',
  pasos: [
    'Paso 1: Laguna el Salado',
    'Paso 2: Cacota',
    'Paso 3: Pamplona',
   
  ],
    
),

  ];
*/


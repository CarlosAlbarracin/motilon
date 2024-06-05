import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:motilon/restaurantes/models/place.dart';
import 'package:motilon/restaurantes/extensions/text_theme_x.dart';

import 'package:motilon/restaurantes/ui/widgets/gradient_status_tag.dart';


class PlaceCardR extends StatelessWidget {
  const PlaceCardR({
    Key? key,
    required this.placeR,
    required this.onPressed,
  }) : super(key: key);

  final RestaurantPlace placeR;
  final VoidCallback onPressed;

  BoxDecoration get _cardDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: CachedNetworkImageProvider(placeR.imagesUrl.first),
       
        fit: BoxFit.cover,
        colorFilter: const ColorFilter.mode(
          Colors.black26,
          BlendMode.darken,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final statusTag = placeR.statusTag;
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16),
        decoration: _cardDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(placeR.name, style: context.headline2),
            const SizedBox(height: 10),
            GradientStatusTagR(statusTag: statusTag),
            const Spacer(),
            Text(
             placeR.locationDesc,
      style: TextStyle(
        color: Colors.white, // Cambia el color del texto a blanco
        fontSize: Theme.of(context).textTheme.headline6?.fontSize, // Usa el tamaño de fuente de headline6
        fontWeight: Theme.of(context).textTheme.headline6?.fontWeight, // Usa el peso de la fuente de headline6
        fontFamily: Theme.of(context).textTheme.headline6?.fontFamily, // Usa la familia de fuente de headline6
      ),)
          ],
        ),
      ),
    );
  }
}


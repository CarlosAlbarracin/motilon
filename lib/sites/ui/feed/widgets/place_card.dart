import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motilon/menu/theme.dart';
import 'package:motilon/sites/extensions/text_theme_x.dart';
import 'package:motilon/sites/models/place.dart';
import 'package:motilon/sites/ui/widgets/gradient_status_tag.dart';


class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
    required this.place,
    required this.onPressed,
  }) : super(key: key);

  final TravelPlace place;
  final VoidCallback onPressed;

  BoxDecoration get _cardDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: CachedNetworkImageProvider(place.imagesUrl.first),
       
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
    final statusTag = place.statusTag;
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
            Text(place.name, style: context.headline2),
            const SizedBox(height: 10),
            GradientStatusTag(statusTag: statusTag),
            const Spacer(),
            Text(
             place.locationDesc,
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


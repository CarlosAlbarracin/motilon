import 'package:flutter/material.dart';
import 'package:motilon/menu/models/place.dart';
import 'package:motilon/menu/theme.dart';

class Event extends StatelessWidget {
  final Place place;
  final int index;
  final VoidCallback onPressed;

  const Event({
    Key? key,
    required this.place,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 210,
          width: 230,
          padding: const EdgeInsets.only(left: 20, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(place.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place.city,
                style: textStyle3.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image(image: AssetImage('assets/map.png')),
                  const SizedBox(width: 6),
                  Text(
                    place.country,
                    style: textStyle3.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            icon: Icon(
              place.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: place.isFavorite ? Colors.red : Colors.grey,
            ),
            onPressed: onPressed, // Aquí se usa correctamente la función onPressed
          ),
        ),
      ],
    );
  }
}

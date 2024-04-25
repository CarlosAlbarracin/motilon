import 'package:flutter/material.dart';
import 'package:motilon/menu/theme.dart';
import 'package:motilon/menu/models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final int index;
  final VoidCallback onPressed;

  const PlaceCard({
    Key? key,
    required this.place,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 170,
        width: 120,
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(place.imageUrl),
                      fit: BoxFit.cover,
                    ),
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
                    onPressed: onPressed,
                  ),
                ),
                if (index == 0)
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: mainCOlor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Image.asset('assets/start.png'),
                      ),
                    ),
                  ),
              ],
            ),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: mainCOlor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  place.city,
                  style: textStyle3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            _ActionButtons(place: place)
          ],
        ),
      ),
    );
  }
}

class _ActionButtons extends StatefulWidget {
  final TravelPlace place;

  const _ActionButtons({required this.place});

  @override
  _ActionButtonsState createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<_ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton.icon(
          onPressed: () {
            setState(() {
              // Cambia el estado de isFavorite
              widget.place.isFavorite = !widget.place.isFavorite;
            });
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),
          ),
          icon: Icon(
            widget.place.isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
            color: widget.place.isFavorite ? Colors.red : null,
          ),
          label: Text('Favorite'),
        ),
       
      ],
    );
  }
}
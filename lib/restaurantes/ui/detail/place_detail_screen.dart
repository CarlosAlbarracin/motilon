import 'package:flutter/material.dart';
import 'package:motilon/restaurantes/models/place.dart';
import 'package:motilon/restaurantes/ui/detail/widgets/animated_detail_header.dart';
import 'package:motilon/sites/extensions/text_theme_x.dart';
import 'package:motilon/sites/models/place.dart';
import 'package:motilon/sites/ui/detail/widgets/animated_detail_header.dart';
import 'package:motilon/sites/ui/detail/widgets/place_comments_widget.dart';
import 'package:motilon/sites/ui/widgets/translate_animation.dart';


class PlaceDetailScreenR extends StatefulWidget {
  const PlaceDetailScreenR({
    super.key,
    required this.placeR,
    required this.screenHeight,
  });

  final RestaurantPlace placeR;
  final double screenHeight;

  @override
  State<PlaceDetailScreenR> createState() => _PlaceDetailScreenRState();
}

class _PlaceDetailScreenRState extends State<PlaceDetailScreenR> {
  late ScrollController _controller;
  late ValueNotifier<double> bottomPercentNotifier;
  final bool _isAnimatingScroll = false;

  void _scrollListener() {
    final percent =
        _controller.position.pixels / MediaQuery.of(context).size.height;
    bottomPercentNotifier.value = (percent / .3).clamp(0.0, 1.0);
  }

  

  @override
  void initState() {
    _controller =
        ScrollController(initialScrollOffset: widget.screenHeight * .3);
    _controller.addListener(_scrollListener);
    
    bottomPercentNotifier = ValueNotifier(1);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AbsorbPointer(
            absorbing: _isAnimatingScroll,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: BuilderPersistentDelegate(
                    maxExtent: MediaQuery.of(context).size.height,
                    minExtent: 240,
                    builder: (percent) {
                      final bottomPercent = (percent / .3).clamp(0.0, 1.0);
                      return AnimatedDetailHeaderR(
                        topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
                        bottomPercent: bottomPercent,
                        place: widget.placeR,
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: TranslateAnimation(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.black26,
                              ),
                              Flexible(
                                child: Text(
                                  widget.placeR.locationDesc,
                                  style: context.bodyText1
                                      .copyWith(color: Colors.blue),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(widget.placeR.description),
                         
                          const SizedBox(height: 20),
                          const Text(
                            'Servicio',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               
              ],
            ),
          ),
          ValueListenableBuilder<double>(
            valueListenable: bottomPercentNotifier,
            builder: (context, value, child) {
              return Positioned.fill(
                top: null,
                bottom: -130 * (1 - value),
                child: child!,
              );
            },
            child: const PlaceCommentsWidget(),
          )
        ],
      ),
    );
  }
}

class BuilderPersistentDelegate extends SliverPersistentHeaderDelegate {
  BuilderPersistentDelegate({
    required double maxExtent,
    required double minExtent,
    required this.builder,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent;

  final double _maxExtent;
  final double _minExtent;
  final Widget Function(double percent) builder;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return builder(shrinkOffset / _maxExtent);
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

import 'dart:ui';

import 'map_market.dart';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


const MAPBOX_ACCESS_TOKEN =
    'pk.eyJ1IjoiY2FybG9zcjg0IiwiYSI6ImNsMDhjZ3M3NjAyMngzam4zZWlycm81OXoifQ.JQihf1v1sZHRYl8vN75iRA';
const MAPBOX_STYLE = 'mapbox/dark-v10';
const MARKER_SIZE_EXPANDED = 55.0;
const MARKER_SIZE_SHRINK = 38.0;

final myLocation = LatLng(7.894235, -72.501744);

class AnimateMarketMap extends StatefulWidget {
  const AnimateMarketMap({Key? key}) : super(key: key);

  @override
  State<AnimateMarketMap> createState() => _AnimateMarketMapState();
}

class _AnimateMarketMapState extends State<AnimateMarketMap>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late final AnimationController _animationController;
  int _selectedIndex = 0;

  List<Marker> _buildMarkers() {
    final markerList = <Marker>[];
    for (int i = 0; i < mapMakers.length; i++) {
      final mapItem = mapMakers[i];
      markerList.add(
        Marker(
          height: MARKER_SIZE_EXPANDED,
          width: MARKER_SIZE_EXPANDED,
          point: mapItem.location,
          
            child:GestureDetector(
              onTap: () {
                _selectedIndex = i;
                setState(() {
                  _pageController.animateToPage(i,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.bounceInOut);
                  print('Selected: ${mapItem.title}');
                });
              },
              child: _LocationMarker(
                selected: _selectedIndex == i,
              ),
            ),
            
        ),
      );
    }
    return markerList;
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final markers = _buildMarkers();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              minZoom: 5,
              maxZoom: 16,
              zoom: 13,
              center: myLocation,
            ),
            nonRotatedChildren: [
              TileLayer(
                urlTemplate:
                    'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
                additionalOptions: {
                  'accessToken': MAPBOX_ACCESS_TOKEN,
                  'id': MAPBOX_STYLE,
                },
              ),
              MarkerLayer(
                markers: markers,
              ),
              MarkerLayer(
                markers: [
                  Marker(
                      height: 60,
                      width: 60,
                      point: myLocation,
                       child: Builder(
                        builder: (_){
                          return _MyLocationMaker(_animationController);
                        }
                        ),
                      ),
                ],
              ),
            ], children: [],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: mapMakers.length,
              itemBuilder: (context, index) {
                final item = mapMakers[index];
                return _MapItemDetail(
                  mapMarket: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationMarker extends StatelessWidget {
  const _LocationMarker({Key? key, this.selected = false}) : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final size = selected ? MARKER_SIZE_EXPANDED : MARKER_SIZE_SHRINK;
    return Center(
      child: AnimatedContainer(
        height: size,
        width: size,
        duration: const Duration(milliseconds: 400),
        child: Image.asset('assets/location.png'),
      ),
    );
  }
}

class _MyLocationMaker extends AnimatedWidget {
  const _MyLocationMaker(Animation<double> animation, {Key? key})
      : super(
          key: key,
          listenable: animation,
        );

  @override
  Widget build(BuildContext context) {
    final value = (listenable as Animation<double>).value;
    final newValue = lerpDouble(0.5, 1.0, value)!;
    const size = 50.0;
    return Center(
        child: Stack(
      children: [
        Center(
          child: Container(
            height: size * newValue,
            width: size * newValue,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey.withOpacity(0.5),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    ));
  }
}

class _MapItemDetail extends StatelessWidget {
  const _MapItemDetail({
    Key? key,
    required this.mapMarket,
  }) : super(key: key);

  final MapMarket mapMarket;

  @override
  Widget build(BuildContext context) {
    const styleTitle = TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
    final styleAdress = TextStyle(color: Colors.grey[800], fontSize: 20);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(mapMarket.image),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          mapMarket.title,
                          style: styleTitle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(mapMarket.address, style: styleAdress),
                        Center(
                          child: Expanded(
                            child: RatingBar.builder(
                              itemCount: 5,
                              initialRating: 3.5,
                              itemSize: 20,
                              itemBuilder: (context, _) {
                                return const Icon(Icons.star, color: Colors.amber);
                              },
                              onRatingUpdate: (raiting) {
                                print(raiting);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              color: Colors.blueGrey,
              elevation: 6,
              child: const Text(
                'Visitar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}


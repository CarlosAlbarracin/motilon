import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motilon/sites/models/place.dart';
import 'package:motilon/sites/ui/detail/place_detail_screen.dart';
import 'package:motilon/sites/ui/feed/widgets/place_card.dart';
import 'package:motilon/sites/ui/feed/widgets/travel_navigation_bar.dart';

import 'package:motilon/views/nabvar.dart';


class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const NavBar(   
      ),
      appBar: AppBar(
        title: const Text('Municipios'),
        
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: TravelPlace.place.length,
        itemExtent: 350,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, kToolbarHeight + 20),
        itemBuilder: (context, index) {
          final place = TravelPlace.place[index];
          return Hero(
            tag: place.id,
            child: Material(
              child: PlaceCard(
                place: place,
                onPressed: () async {
                  Navigator.push(
                    context,
                    PageRouteBuilder<dynamic>(
                      pageBuilder: (_, animation, __) => FadeTransition(
                        opacity: animation,
                        child: PlaceDetailScreen(
                          place: place,
                          screenHeight: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.location_on),
      ),
      bottomNavigationBar: TravelNavigationBar(
        onTap: (index) {},
        items: [
          TravelNavigationBarItem(
            icon: CupertinoIcons.chat_bubble,
            selectedIcon: CupertinoIcons.chat_bubble_fill,
          ),
          TravelNavigationBarItem(
            icon: CupertinoIcons.square_split_2x2,
            selectedIcon: CupertinoIcons.square_split_2x2_fill,
          ),
        ],
        currentIndex: 1,
      ),
    );
  }
}

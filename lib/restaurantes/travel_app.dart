import 'package:flutter/material.dart';
import 'package:motilon/sites/theme/theme.dart';
import 'package:motilon/restaurantes/ui/feed/feed_screen.dart';

class Restaurante extends StatelessWidget {
  const Restaurante({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TravelTheme.theme,
      home: const FeedScreen(),
    );
  }
}

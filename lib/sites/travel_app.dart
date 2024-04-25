import 'package:flutter/material.dart';
import 'package:motilon/sites/theme/theme.dart';
import 'package:motilon/sites/ui/feed/feed_screen.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TravelTheme.theme,
      home: const FeedScreen(),
    );
  }
}

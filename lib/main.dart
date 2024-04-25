import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motilon/firebase_options.dart';
import 'package:motilon/login/splash_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dotenv.load(fileName: ".env");
  runApp(ProviderScope(child: MyApp(),));
}

class MyApp extends StatelessWidget {
    final Color _primaryColor = HexColor('#000000');
  final Color _accentColor = HexColor('#A71111');
  MyApp({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
      primaryColor: _primaryColor, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: _accentColor),
      ),
      home: const SplashScreen(title: 'Bienvenidos',),
        
    );
  }
}
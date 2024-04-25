// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDTOJQ2oANwN7gGherAfrZQN5b9OWutHO0',
    appId: '1:651085286519:web:22bdc1b3302bd03d214a72',
    messagingSenderId: '651085286519',
    projectId: 'motilon-83f78',
    authDomain: 'motilon-83f78.firebaseapp.com',
    databaseURL: 'https://motilon-83f78.firebaseio.com',
    storageBucket: 'motilon-83f78.appspot.com',
    measurementId: 'G-XJXZCQ1N3Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAYfNGuogu5EaWKakqmAfTHFHDuY2av6o',
    appId: '1:651085286519:android:1fba65553dc65522214a72',
    messagingSenderId: '651085286519',
    projectId: 'motilon-83f78',
    databaseURL: 'https://motilon-83f78.firebaseio.com',
    storageBucket: 'motilon-83f78.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBC-5s0WStakhNP8ZYhGWwaPZQ9rh3lK9g',
    appId: '1:651085286519:ios:e048a6c78664e96f214a72',
    messagingSenderId: '651085286519',
    projectId: 'motilon-83f78',
    databaseURL: 'https://motilon-83f78.firebaseio.com',
    storageBucket: 'motilon-83f78.appspot.com',
    androidClientId: '651085286519-f7aatrvpuempka3tvsmrfn6psf08565t.apps.googleusercontent.com',
    iosClientId: '651085286519-qiiih50ohbj2pka1k2uev0pegcq1vmek.apps.googleusercontent.com',
    iosBundleId: 'com.example.motilon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBC-5s0WStakhNP8ZYhGWwaPZQ9rh3lK9g',
    appId: '1:651085286519:ios:c66bb540732059fe214a72',
    messagingSenderId: '651085286519',
    projectId: 'motilon-83f78',
    databaseURL: 'https://motilon-83f78.firebaseio.com',
    storageBucket: 'motilon-83f78.appspot.com',
    androidClientId: '651085286519-f7aatrvpuempka3tvsmrfn6psf08565t.apps.googleusercontent.com',
    iosClientId: '651085286519-phb6oq9ra3o81ctgvfaoc08ou402qpne.apps.googleusercontent.com',
    iosBundleId: 'com.example.motilon.RunnerTests',
  );
}

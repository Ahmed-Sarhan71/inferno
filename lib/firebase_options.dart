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
    apiKey: 'AIzaSyAuskBpnh7IUy4AfBllUPdN7N3MIjMCTnQ',
    appId: '1:561467021784:web:eb7710f4409bc088843aad',
    messagingSenderId: '561467021784',
    projectId: 'fire-fighting-robot-7a1ea',
    authDomain: 'fire-fighting-robot-7a1ea.firebaseapp.com',
    storageBucket: 'fire-fighting-robot-7a1ea.appspot.com',
    measurementId: 'G-KE3ZJXV7ZW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBx2Ishpm56BsqslIRtFwHEbr2jS_eLVw0',
    appId: '1:561467021784:android:f9b33b22c19b6d99843aad',
    messagingSenderId: '561467021784',
    projectId: 'fire-fighting-robot-7a1ea',
    storageBucket: 'fire-fighting-robot-7a1ea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5dXyBhQWq6dyZnxlYa2QicUqYqNpaS6Y',
    appId: '1:561467021784:ios:a2ec8b71e0709651843aad',
    messagingSenderId: '561467021784',
    projectId: 'fire-fighting-robot-7a1ea',
    storageBucket: 'fire-fighting-robot-7a1ea.appspot.com',
    iosBundleId: 'com.example.inferno',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5dXyBhQWq6dyZnxlYa2QicUqYqNpaS6Y',
    appId: '1:561467021784:ios:77701fe54a583c10843aad',
    messagingSenderId: '561467021784',
    projectId: 'fire-fighting-robot-7a1ea',
    storageBucket: 'fire-fighting-robot-7a1ea.appspot.com',
    iosBundleId: 'com.example.inferno.RunnerTests',
  );
}
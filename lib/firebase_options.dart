// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
      apiKey: 'AIzaSyDVmIUzgdhjlA4rJEBF6waovtidcHfq6c8',
      appId: '1:87184420065:web:43ecb7df084909ffe05ba0',
      messagingSenderId: '87184420065',
      projectId: 'getx-tutorial-2c2b5',
      authDomain: 'getx-tutorial-2c2b5.firebaseapp.com',
      storageBucket: 'getx-tutorial-2c2b5.appspot.com',
      measurementId: 'G-E3S4W5KX49',
      databaseURL:
          "https://console.firebase.google.com/project/getx-tutorial-2c2b5");

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBveiJcFF60IbLnZFipptx6BT3MTNS4uHY',
    appId: '1:87184420065:android:043e64dfddf23caae05ba0',
    messagingSenderId: '87184420065',
    projectId: 'getx-tutorial-2c2b5',
    storageBucket: 'getx-tutorial-2c2b5.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDVmIUzgdhjlA4rJEBF6waovtidcHfq6c8',
    appId: '1:87184420065:web:46cfac54decf77cce05ba0',
    messagingSenderId: '87184420065',
    projectId: 'getx-tutorial-2c2b5',
    authDomain: 'getx-tutorial-2c2b5.firebaseapp.com',
    storageBucket: 'getx-tutorial-2c2b5.appspot.com',
    measurementId: 'G-8DYHW0VFRE',
  );
}

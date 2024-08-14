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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyC7Z6xRmA8ocDp6jXDZP7-NOXnOMr-L7-0',
    appId: '1:596381551772:web:8b928c83718baf58a93159',
    messagingSenderId: '596381551772',
    projectId: 'task5-af880',
    authDomain: 'task5-af880.firebaseapp.com',
    storageBucket: 'task5-af880.appspot.com',
    measurementId: 'G-FNF7GZPP09',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD9xmLSbqQAfPP4BL-8g181ehdQ9bjexq4',
    appId: '1:596381551772:android:aa85e83e9b6e0561a93159',
    messagingSenderId: '596381551772',
    projectId: 'task5-af880',
    storageBucket: 'task5-af880.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_8h1eezvj6VmnR7FRyqyjcDnPXb3HFCE',
    appId: '1:596381551772:ios:23f8e7ec29cb081aa93159',
    messagingSenderId: '596381551772',
    projectId: 'task5-af880',
    storageBucket: 'task5-af880.appspot.com',
    iosBundleId: 'com.example.task5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_8h1eezvj6VmnR7FRyqyjcDnPXb3HFCE',
    appId: '1:596381551772:ios:23f8e7ec29cb081aa93159',
    messagingSenderId: '596381551772',
    projectId: 'task5-af880',
    storageBucket: 'task5-af880.appspot.com',
    iosBundleId: 'com.example.task5',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC7Z6xRmA8ocDp6jXDZP7-NOXnOMr-L7-0',
    appId: '1:596381551772:web:290db1f50093770ca93159',
    messagingSenderId: '596381551772',
    projectId: 'task5-af880',
    authDomain: 'task5-af880.firebaseapp.com',
    storageBucket: 'task5-af880.appspot.com',
    measurementId: 'G-7YMS1PFXSV',
  );
}

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
    apiKey: 'AIzaSyBmMttoR2KI47YqKGE4CZrDs_K7Q26O4nU',
    appId: '1:252463646565:web:99ed76448b672fc96b838c',
    messagingSenderId: '252463646565',
    projectId: 'modernlogintute-dc4b8',
    authDomain: 'modernlogintute-dc4b8.firebaseapp.com',
    storageBucket: 'modernlogintute-dc4b8.appspot.com',
    measurementId: 'G-163CQ5C5T1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcMopMJx-HxauU_ykczm3M9AdjBVc6PdQ',
    appId: '1:252463646565:android:9f12ae83e2d9991f6b838c',
    messagingSenderId: '252463646565',
    projectId: 'modernlogintute-dc4b8',
    storageBucket: 'modernlogintute-dc4b8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA43zixcJVTxWo1fnREQ3TbxTQaPuIIqAg',
    appId: '1:252463646565:ios:bcd904254bd02e4d6b838c',
    messagingSenderId: '252463646565',
    projectId: 'modernlogintute-dc4b8',
    storageBucket: 'modernlogintute-dc4b8.appspot.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA43zixcJVTxWo1fnREQ3TbxTQaPuIIqAg',
    appId: '1:252463646565:ios:bcd904254bd02e4d6b838c',
    messagingSenderId: '252463646565',
    projectId: 'modernlogintute-dc4b8',
    storageBucket: 'modernlogintute-dc4b8.appspot.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBmMttoR2KI47YqKGE4CZrDs_K7Q26O4nU',
    appId: '1:252463646565:web:0b78833957792cc26b838c',
    messagingSenderId: '252463646565',
    projectId: 'modernlogintute-dc4b8',
    authDomain: 'modernlogintute-dc4b8.firebaseapp.com',
    storageBucket: 'modernlogintute-dc4b8.appspot.com',
    measurementId: 'G-WE8VG225K5',
  );

}
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZGv2QlmYFShmJK-xV2EDuWtraJhLNCco',
    appId: '1:871867126085:ios:79fa4c539849e2e21eae2c',
    messagingSenderId: '871867126085',
    projectId: 'applaba-01',
    storageBucket: 'applaba-01.appspot.com',
    iosClientId: '871867126085-g6ugatgmco8tststgc6m1rcmd499p20d.apps.googleusercontent.com',
    iosBundleId: 'com.example.appLaba01',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBb4yFcLdQxIIm55bgrBV6ohG25II1TT8c',
    appId: '1:871867126085:web:18b1c165b1cc798c1eae2c',
    messagingSenderId: '871867126085',
    projectId: 'applaba-01',
    authDomain: 'applaba-01.firebaseapp.com',
    storageBucket: 'applaba-01.appspot.com',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyBb4yFcLdQxIIm55bgrBV6ohG25II1TT8c',
    appId: '1:871867126085:web:498f95852d67b1df1eae2c',
    messagingSenderId: '871867126085',
    projectId: 'applaba-01',
    authDomain: 'applaba-01.firebaseapp.com',
    storageBucket: 'applaba-01.appspot.com',
  );
}
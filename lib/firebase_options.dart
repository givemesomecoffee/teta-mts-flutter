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
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHfp3aCUCXFaB4YJK9LEfsvQYoXzHP4-Q',
    appId: '1:764028397479:android:01fc6e1dedf24644557882',
    messagingSenderId: '764028397479',
    projectId: 'chat-app-41de2',
    databaseURL: 'https://chat-app-41de2-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chat-app-41de2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWU2tsl58tK7EKlvPpaFWrhdEsEVAX0Og',
    appId: '1:764028397479:ios:368ef026cd13036a557882',
    messagingSenderId: '764028397479',
    projectId: 'chat-app-41de2',
    databaseURL: 'https://chat-app-41de2-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chat-app-41de2.appspot.com',
    iosClientId: '764028397479-7j8bnrs1ovnjvajk5tmdomqh0tkra3i0.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}

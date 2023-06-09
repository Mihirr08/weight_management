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
    apiKey: 'AIzaSyCScJ7nW4yW6PEI9AZ8YopuzuObb03wc68',
    appId: '1:394523194339:android:4ecf412487b6a34843e6d6',
    messagingSenderId: '394523194339',
    projectId: 'weight-management-app-3e42d',
    databaseURL: 'https://weight-management-app-3e42d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'weight-management-app-3e42d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOifg_VOG3rNuNWjE-mbEDTsUZt3PmvUk',
    appId: '1:394523194339:ios:f1cd3ca03d044f9443e6d6',
    messagingSenderId: '394523194339',
    projectId: 'weight-management-app-3e42d',
    databaseURL: 'https://weight-management-app-3e42d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'weight-management-app-3e42d.appspot.com',
    iosClientId: '394523194339-5k04hf5tb3bbd5iint8htm4npemgd0ei.apps.googleusercontent.com',
    iosBundleId: 'com.example.weightManagementApp',
  );
}

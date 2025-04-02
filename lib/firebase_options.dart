import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyA5ISlxmiflFnfEiUzpKeWrETr1eL51W94',
    appId: '1:18108138015:android:f1cc9103aeb09dcccc8b2a',
    messagingSenderId: '18108138015',
    projectId: 'qofona-86fb7',
    storageBucket: 'qofona-86fb7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCT7-VL2hrSrkEHGsCXCo0wSHoLWIFrFsY',
    appId: '1:18108138015:ios:7456a17a0164b1aacc8b2a',
    messagingSenderId: '18108138015',
    projectId: 'qofona-86fb7',
    storageBucket: 'qofona-86fb7.firebasestorage.app',
    androidClientId: '18108138015-nk219fme9um0hdc5qkqbvctb25e5msqh.apps.googleusercontent.com',
    iosClientId: '18108138015-lugtlvgm44i27k2dicaka6ocs2njrcgh.apps.googleusercontent.com',
    iosBundleId: 'com.qofona.app',
  );

}